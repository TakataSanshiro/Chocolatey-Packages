$packageName = 'zerobrane-studio.install'

# Remove the shortcut we added
$shortcutPath = join-path $env:appdata "Microsoft\Windows\Start Menu\Programs"
$shortcutName = "ZeroBrane Studio Lua IDE"
$lnkPath = join-path $shortcutPath ($shortcutName + ".lnk")
Remove-item -path $lnkPath -Force -ErrorAction 'SilentlyContinue'