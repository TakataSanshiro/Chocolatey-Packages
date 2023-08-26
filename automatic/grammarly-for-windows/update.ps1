import-module au
Import-Module "$env:ChocolateyInstall\helpers\chocolateyInstaller.psm1"

$url = 'https://download-windows.grammarly.com/GrammarlyInstaller.exe'

function global:au_SearchReplace {
    return @{
      ".\tools\chocolateyInstall.ps1" = @{
        "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
        "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
     }
}

function global:au_AfterUpdate {
  "$($Latest.ETAG)|$($Latest.Version)" | Out-File "$PSScriptRoot\info" -Encoding utf8
}

function GetResultInformation([string]$url) {
  $dest = "$env:TEMP\GrammarlyInstaller.exe"
  Invoke-WebRequest -UseBasicParsing -Uri $url -OutFile $dest
  $version = (Get-Command $dest).Version

  $result = @{
    URL32          = $url
    Version        = $version
    Checksum32     = Get-FileHash $dest -Algorithm sha256 | % Hash
    ChecksumType32 = 'sha256'
  }
  Remove-Item -Force $dest
  return $result
}

function GetETagIfChanged() {
  param([string]$url)
  if (($global:au_Force -ne $true) -and (Test-Path $PSScriptRoot\info)) {
    $existingETag = Get-Content "$PSScriptRoot\info" -Encoding UTF8 | select -first 1 | % { $_ -split '\|' } | select -First 1
  }
  else { $existingETag = $null }

  $etag = Invoke-WebRequest -Method Head -Uri $url -UseBasicParsing
  $etag = $etag | % { $_.Headers.ETag }
  if ($etag -eq $existingETag) { return $null }

  return $etag
}

function global:au_GetLatest {
  $etag = GetETagIfChanged $url
  if ($etag) {
    $result = GetResultInformation $url
    $result["ETAG"] = $etag
  }
  else {
    $result = @{
      URL32   = $url
      Version = Get-Content "$PSScriptRoot\info" -Encoding UTF8 | select -First 1 | % { $_ -split '\|' } | select -Last 1
    }
  }

  return $result
}

update -NoCheckUrl
