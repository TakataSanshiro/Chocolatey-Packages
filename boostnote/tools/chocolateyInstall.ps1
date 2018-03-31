$ErrorActionPreference = 'Stop';

$packageName = 'boostnote'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$installerType = 'exe'
$url = 'https://github-production-release-asset-2e65be.s3.amazonaws.com/47141292/51734786-2716-11e8-971c-6f21639bba49?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A/20180331/us-east-1/s3/aws4_request&X-Amz-Date=20180331T121035Z&X-Amz-Expires=300&X-Amz-Signature=fc3fb97e2fa4d6feac780735d067d5475d453269adf245115fb328bc6d19c1b6&X-Amz-SignedHeaders=host&actor_id=25909315&response-content-disposition=attachment; filename=Boostnote-win.exe&response-content-type=application/octet-stream' 
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 7D582C69C5AEBC11A821245EA76DAE90028B96350F25EA6FD9F047C61DA5EF84 -ChecksumType sha256