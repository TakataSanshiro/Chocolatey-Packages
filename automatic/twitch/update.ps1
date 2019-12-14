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

function global:au_BeforeUpdate() {
    $Latest.Checksum64 = Get-RemoteChecksum $Latest.URL
}

function global:au_GetLatest {
    $currentChecksum = (gi .\tools\chocolateyInstall.ps1 | sls '\bchecksum\b') -split "=|'" | Select -Last 1 -Skip 1

    if ($currentChecksum -ne $Latest.Checksum64) {
        Write-Host 'Remote checksum is different then the current one, forcing update'
        
        Write-Host $url
 
        $temp_file = $env:TEMP + 'TwitchSetup.exe'
        Invoke-WebRequest $url -OutFile $temp_file
        Write-Host $temp_file
        
        $version = (Get-Command $temp_file).Version
        Write-Host $version

        $currentVersion = (gi .\twitch.nuspec | sls '\bversion\b')

        if ($currentVersion -eq $version) {
            Write-Host 'The version number has not changed, forcing update'
            $global:au_old_force = $global:au_force
            $global:au_force = $true
        }
     }

    @{
        Version = $version
        URL     = 'https://desktop.twitchsvc.net/installer/windows/TwitchSetup.exe'
    }
}

update -ChecksumFor 64 -NoCheckUrl