import-module au

#$releases = 'https://github.com/KDE/elisa/tags'
$artifacts64 = 'https://binary-factory.kde.org/view/Windows%2064-bit/job/Elisa_Release_win64/lastSuccessfulBuild/artifact/'

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
    $build64 = ((Invoke-WebRequest $artifacts64 -UseBasicParsing).links | ? href -match '.exe$' | select -First 1 -expand href) -split '-' | select -First 1 -Skip 2

    @{
        Version        = $version
        URL64          = "https://binary-factory.kde.org/job/Elisa_Release_win64/lastStableBuild/artifact/elisa-$version-$build64-windows-msvc2019_64-cl.exe"
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
