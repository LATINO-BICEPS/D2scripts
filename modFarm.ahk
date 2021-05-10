#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


~^s::
  Reload
return

F2::
  Toggle := !Toggle
    send, i
    sleep, 1800
    While Toggle{
      MouseMove, 1448, 68 , 5
      Click
      sleep, 500
      ; move to weapon
      MouseMove, 858, 514 , 5
      Click
      sleep, 1000
      MouseMove, 2403, 727 , 5
      click
      sleep, 1200
      click
      sleep, 1200
      MouseMove, 1701, 469 , 5
      click
      sleep, 500
      loop 9{
        create()
        sleep 100
      }
      send, i
      sleep, 1700
      MouseMove, 731, 543 , 5
      sleep 100
      MouseMove, 606, 543 , 5
      sleep 100
      loop 9{
        dismantle()
        sleep 100
      }
      
		}
return


F3::
  MouseGetPos, xpos, ypos 
  MsgBox, The cursor is at X%xpos% Y%ypos%.
return


dismantle(){
  send {f down}
  sleep 2000
  send {f up}
}

create(){
  send {click down}
  sleep 3300
  send {click up}
}



~^Esc::Pause