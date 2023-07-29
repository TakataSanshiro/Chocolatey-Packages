import-module au

$releases = 'https://central.github.com/deployments/desktop/desktop/latest/win32'

function global:au_BeforeUpdate {
  Get-RemoteFiles -Purge -NoSuffix 
}

function global:au_SearchReplace {
  @{
    ".\legal\VERIFICATION.txt" = @{
		  "(?i)(64-Bit.+)\<.*\>"     = "`${1}<$($Latest.URL64)>"
		  "(?i)(checksum type:).*"   = "`${1} $($Latest.ChecksumType64)"
		  "(?i)(checksum64:).*"      = "`${1} $($Latest.Checksum64)"
		}
  }
}

function global:au_GetLatest {
  $response = Invoke-WebRequest -Uri $releases -UseBasicParsing -MaximumRedirection 0 -ErrorAction Ignore
  if ($response.StatusCode -ne 302) {
    throw "HTTP $($response.StatusCode) when requesting $releases"
  }
  if (-not $response.Headers.Location) {
    throw "No Location header returned when requesting $releases"
  }

  $downloadUrl = $response.Headers.Location
  $version = $response.Headers.Location | % { $_ -split '/' | select -Last 2 }
  $version = $version[0] | % { $_ -split '-' | select -First 1 }

  return @{
    Version = $version
    URL64   = $downloadUrl
  }
}

try {
    update -ChecksumFor none -NoCheckUrl
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
