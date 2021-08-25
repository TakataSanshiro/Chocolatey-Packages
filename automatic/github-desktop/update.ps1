import-module au

$releases = 'https://desktop.github.com/'

function global:au_BeforeUpdate {
  Get-RemoteFiles -Purge -NoSuffix 
}

function global:au_SearchReplace {
  @{
    ".\tools\VERIFICATION.txt" = @{
      "(?i)(32-Bit.+)\<.*\>"     = "`${1}<$($Latest.URL32)>"
    }
  }
}

function global:au_GetLatest {
  $response = Invoke-WebRequest -Uri $releases -UseBasicParsing
  
  $re = 'win32'
  $Url32 = Get-RedirectedUrl ($response.Links | Where-Object { $_.href -match $re } | Select-Object -First 1 -ExpandProperty href)
  
  $chlog = 'https://central.github.com/deployments/desktop/desktop/changelog.json'
  $version = (Invoke-WebRequest -Uri $chlog | ConvertFrom-Json).version[0]

  return @{
    Version = $version
    URL32   = $Url32
  }
}

update -ChecksumFor none -NoCheckUrl
