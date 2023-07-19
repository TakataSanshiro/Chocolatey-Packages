#Requires AutoHotkey v2.0
; default environment
DetectHiddenWindows False
SetKeyDelay 100

; modified environment
#NoTrayIcon
DetectHiddenText False
SetTitleMatchMode 2

; variables
winTitleLang      := "Language Selection" ;ahk_class SunAwtDialog ahk_exe javaw.exe
winTitleInstaller := "IzPack - Installation of i2p" ;ahk_class SunAwtFrame ahk_exe javaw.exe
winTitleDirExist  := "Warning!" ;ahk_class SunAwtDialog ahk_exe javaw.exe
winTitleDirNew    := "Message" ;ahk_class SunAwtDialog ahk_exe javaw.exe

; automate install with default options
WinWaitActive(winTitleLang, , 300)
Send "{ENTER}"

WinWaitActive(winTitleInstaller, , 10)
Send "{ENTER}"
Sleep(2000)
Send "{ENTER}"
Sleep(2000)
Send "{ENTER}"
Sleep(2000)
Send "{ENTER}"
Sleep(2000)
Send "{ENTER}"
Sleep(2000)
Send "{ENTER}"
Sleep(50000)
Send "{ENTER}"
Sleep(2000)
Send "{ENTER}"
Sleep(2000)
Send "{ENTER}"

Loop 1000 {
  If WinExist(winTitleDirExist)
  {
    WinActivate
    Send "{ENTER}"
  }
  If WinExist(winTitleDirNew)
  {
    WinActivate
    Send "{ENTER}"
  }
  If WinExist(winTitleInstaller)
  {
    WinActivate
    Send "{ENTER}"
  }
  Else
    break
  Sleep(150)
}
ExitApp
