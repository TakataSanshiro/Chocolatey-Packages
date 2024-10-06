#Requires AutoHotkey v2.0
; default environment
DetectHiddenWindows False
SetKeyDelay 100

; modified environment
#NoTrayIcon
DetectHiddenText False
SetTitleMatchMode 2

; variables
winTitle      := "Setup" ;ahk_class SunAwtDialog ahk_exe javaw.exe

; automate install with default options
WinWaitActive(winTitle, , 300)
Send "{ENTER}"
Sleep(60000)
WinWaitActive(winTitle, , 60000)
Send "{ENTER}"
ExitApp
