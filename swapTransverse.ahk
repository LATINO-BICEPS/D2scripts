#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; A_ScreenWidth // x - positive: right
; A_ScreenHeight // y - positive: down


~^s::
  Reload
return

F9::
	Send, i
	Sleep, 1500
	MouseMove, 1870, 829
	Sleep, 100
	MouseMove, 1993, 829
	Sleep, 50
	Click
	Send, i
return

F10::
	Send, i
	Sleep, 1500
	MouseMove, 685, 527
	Sleep, 100
	MouseMove, 594, 527
	Sleep, 50
	Click
	Send, i
return

F12::
	MouseGetPos, xpos, ypos 
	MsgBox, The cursor is at X%xpos% Y%ypos%.
return