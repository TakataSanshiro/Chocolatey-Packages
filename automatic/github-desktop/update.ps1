import-module au

$releases = 'https://desktop.github.com/'

function global:au_BeforeUpdate {
  Get-RemoteFiles -Purge -NoSuffix 
}

function global:au_SearchReplace {
  @{
    ".\tools\VERIFICATION.txt" = @{
      "(?i)(64-Bit.+)\<.*\>"     = "`${1}<$($Latest.URL64)>"
    }
  }
}

function global:au_GetLatest {
  $response = Invoke-WebRequest -Uri $releases -UseBasicParsing
  
  $re = 'win32'
  $Url64 = Get-RedirectedUrl ($response.Links | Where-Object { $_.href -match $re } | Select-Object -First 1 -ExpandProperty href)
  $version = (($Url64).Split('/|-') | Where-Object { $_ -match '(\d+)' })[0]

  return @{
    Version = $version
    URL64   = $Url64
  }
}

update -ChecksumFor none -NoCheckUrl
