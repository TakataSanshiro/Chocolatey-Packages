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
  If WinExist("Setup")
    {
    WinActivate
    Send "{Enter}"
    Send "{Enter}"
    Send "{Enter}"
    Sleep(5000)
    Send "{Enter}"
    ExitApp
    }
}
