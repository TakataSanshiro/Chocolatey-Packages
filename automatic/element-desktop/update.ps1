import-module au

$releases = 'https://github.com/vector-im/riot-desktop/tags'

function global:au_SearchReplace {
   @{
		".\legal\VERIFICATION.txt" = @{
		  "(?i)(64-Bit.+)\<.*\>"     = "`${1}<$($Latest.URL64)>"
		  "(?i)(checksum type:).*"   = "`${1} $($Latest.ChecksumType64)"
		  "(?i)(checksum64:).*"      = "`${1} $($Latest.Checksum64)"
		}
        ".\tools\chocolateyinstall.ps1" = @{
            "(?i)(^\s*File64\s*=\s*)(.*)" = "`$1Join-Path `$toolsDir '$($Latest.FileName64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $version = $download_page.links.href -match 'tag/v' -notmatch 'rc' | Select -First 1 | % { $_ -split '/' | select -Last 1 }
    $version = $version.trim("v")

    @{
        Version        = $version
        URL64          = "https://packages.riot.im/desktop/install/win32/x64/Element Setup $version.exe"
    }
}

function global:au_BeforeUpdate() {
	Get-RemoteFiles -Purge
}


try {
    update -checksumfor none
} catch  {
    if ($_ -match '404') { Write-Host "$_"; return 'ignore' }
}
