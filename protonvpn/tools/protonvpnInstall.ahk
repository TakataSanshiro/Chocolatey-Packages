#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
#WinActivateForce
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; A window's title can contain WinTitle anywhere inside it to be a match. 

WinWait, LoginWindow, , 9000
WinClose

WinWait, TAP-ProtonVPN 9.21.2-I601 Setup, , 9000
WinActivate
Send {Enter}
Send {Enter}
Send {Enter}
Send {Enter}
Sleep, 1000
Send {Enter}
Send {Enter}