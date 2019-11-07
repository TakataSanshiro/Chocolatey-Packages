import-module au

$releases = 'https://central.github.com/deployments/desktop/desktop/latest/win32'

function global:au_BeforeUpdate {
  $Latest.Checksum32 = Get-RemoteChecksum -Url $Latest.Url32 -Algorithm 'SHA256'
}

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
        "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
        "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
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
    URL32   = $downloadUrl
  }
}

update -ChecksumFor none -NoCheckUrl