#Requires AutoHotkey v2.0
; default environment
DetectHiddenWindows False
SetKeyDelay 100

; modified environment
#NoTrayIcon
DetectHiddenText False
SetTitleMatchMode 2


Loop 1000 {
  Sleep(2000)
  If WinExist("Replace existing version?")
  {
  WinActivate
  Send "{y}"
  }

Sleep(20000)

If WinExist("Windows Security")
  {
  WinActivate
  Send "{i}"
  }

Sleep(20000)

If WinExist("Error")
  {
  WinActivate
  Send "{c}"
  }

Sleep(40000)

If WinExist("Private Internet Access")
  {
  Run A_ComSpec ' /c "taskkill /F /T /IM pia-service.exe" '
  Run A_ComSpec ' /c "taskkill /F /T /IM pia-client.exe" '
  ExitApp
  }
}
