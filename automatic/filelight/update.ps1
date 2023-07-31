import-module au

$artifacts64 = 'https://download.kde.org/stable/release-service/23.04.0/windows/'

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
    #$download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    #$url           = $download_page.links | ? href -match '.zip$' | select -First 1 -expand href
    $version = ((Invoke-WebRequest $artifacts64 -UseBasicParsing).links | ? href -match '.exe$' | select -First 1 -expand href) -split '-' | select -First 1 -Skip 1
    #$build64 = ((Invoke-WebRequest $artifacts64 -UseBasicParsing).links | ? href -match '.exe$' | select -First 1 -expand href) -split '-' | select -First 1 -Skip 2

    @{
        Version        = $version
        URL64          = "https://download.kde.org/stable/release-service/$version/windows/filelight-$version-1330-windows-cl-msvc2019-x86_64.exe"
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
