$ErrorActionPreference = 'Stop'

Start-Process -FilePath "$env:LocalAppData\itch\itch-setup.exe" -ArgumentList "--appname itch --uninstall"
