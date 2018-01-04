#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
#WinActivateForce
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; A window's title can contain WinTitle anywhere inside it to be a match. 

Loop, 10000
{
IfWinExist, LoginWindow
  {
  WinClose
  }

sleep 10000

IfWinExist, TAP-ProtonVPN 9.21.2-I601 Setup
  {
  WinActivate
  Send {Enter}
  Send {Enter}
  Send {Enter}
  Send {Enter}
  Sleep, 10000
  Send {Enter}
  Send {Enter}
  ExitApp
  }
}