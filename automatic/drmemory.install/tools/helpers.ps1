[array]$key = Get-UninstallRegistryKey -SoftwareName 'Dr. Memory*'
if ($key.PSChildName) {
  Write-Host "Uninstall the installed previous version drmemory before installing the latest version one due to a '1638' Exit code failure."
  
  #https://serverfault.com/questions/816755/how-to-call-msiexec-from-powershell-with-parameters
  $cmdhash=@{}
  $cmdhash['FilePath']     = 'C:\Windows\System32\msiexec.exe'
  $cmdhash['Wait']         = $true
  $cmdhash['NoNewWindow']  = $true
  $cmdhash['ArgumentList'] = @()
  $cmdhash['ArgumentList'] += '/x'
  $cmdhash['ArgumentList'] += $key.PSChildName
  $cmdhash['ArgumentList'] += '/qn'
  Start-Process @cmdhash
}