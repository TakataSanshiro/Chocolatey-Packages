# need to install twitch on the local machine and updated one. checking the installed version on line 22, 23
import-module au

$url = 'https://desktop.twitchsvc.net/installer/windows/TwitchSetup.exe'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            #  "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $twitch_file = $env:AppData + '\Twitch\Bin\TwitchAgent.exe'
    $version = (Get-Command $twitch_file).Version
    Write-Host $version

    $Latest = @{ URL = $url; Version = $version }
    return $Latest
}

update -ChecksumFor 64 -NoCheckUrl