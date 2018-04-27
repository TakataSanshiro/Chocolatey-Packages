# Chocolatey-Packages
Some packages that can be installed via chocolatey.org

My Chocolatey profile.  
https://chocolatey.org/profiles/Sanshiro

Chocolatey - like yum or apt-get, but for Windows  
More information about chocolatey is here.  
https://github.com/chocolatey/choco

## Contribution
PRs to this project are welcome.  
Updating a chocolatey package is very easy.

In most cases, you need to change the three variables of a chocolatey package.  
You can update chocolatey packages if you don't know how to create chocolatey packages and programming.

1. Change the <version> in the packageName.nuspec to the latest version number.  
<version>changeIt</version>

2. Change the $url in the chocolateyinstall.ps1 in the packageName directory to the latest version download link.  
$url = 'changeIt'

But, the app website offers only the latest version, then you don't need to change the $url.  
ex)   
Twitch offers only the latest version app.  
https://updates.twitchapp.net/windows/installer/TwitchSetup.exe  
In this case, you don't need to change the $url.

itch.io offers some version apps. The download URL contains a version number.  
https://github.com/itchio/itch/releases/download/v23.6.1/itchSetup.exe  
In this case, you need to change the $url to the latest version download link.  
You have to specify the same domain download link that previous version of the chocolatey package.  
If you change the download link to another domain, then I reject it.

3. Change the $checksum in the chocolateyinstall.ps1 in the packageName directory to the latest version's sha256 checksum.  
$checksum = 'changeIt'

I've been waiting for your PRs.
