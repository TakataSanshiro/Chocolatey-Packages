#Requires AutoHotkey v2.0
; default environment
DetectHiddenWindows False
SetKeyDelay 100

; modified environment
#NoTrayIcon
DetectHiddenText False
SetTitleMatchMode 2



sleep 10000

If WinExist("Uninstall")
  {
  WinActivate
  Send "{ENTER}"
  Send "{ENTER}"
  sleep 20000
  Send "{ENTER}"
  Send "{ENTER}"
  }
ExitApp
