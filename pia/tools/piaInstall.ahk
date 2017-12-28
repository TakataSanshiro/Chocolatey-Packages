#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; A window's title can contain WinTitle anywhere inside it to be a match. 

;WinWaitActive, Windows Security , , 9000
;Send {i}

Loop, 10000
{
IfWinExist, Windows Security
  {
  WinActivate
  Send {i}
  }

sleep 10000

IfWinExist, Private Internet Access
  {
  Run, %comspec% /c "taskkill /F /T /IM pia_manager.exe"
  Run, %comspec% /c "taskkill /F /T /IM rubyw.exe"
  Run, %comspec% /c "taskkill /F /T /IM pia_nw.exe"
  ExitApp
  }
}