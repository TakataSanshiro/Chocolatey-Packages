#Requires AutoHotkey v2.0
; default environment
DetectHiddenWindows False
SetKeyDelay 100

; modified environment
#NoTrayIcon
DetectHiddenText False
SetTitleMatchMode 2

; variables
winTitleInstaller := "Uninstall" ; ahk_class SunAwtFrame ahk_exe java.exe

; automate uninstall with default options
WinWaitActive(winTitleInstaller, , 60)
Send "{SPACE}"
Send "{TAB}"
Send "{ENTER}"
Sleep(2000)
Send "{ENTER}"
Sleep(2000)
Send "{ENTER}"
ExitApp
