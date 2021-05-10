#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

~^s::
  Reload
return

~^Esc::Pause

F2::
  ; how many materials you want to buy
  ; must be a multiple of 5 !!
  
  while true{
    InputBox, quantity, , How many materials do you need? (Multiples of 5), , , , , , , , 100
    ; check if it's a multiple of 5
    if(Mod(quantity, 5) == 0){
      numClicks := quantity//5 ; num of clicks is same as legendary shards
      InputBox, preference, , Are you sure you want %quantity%? This will cost you %numClicks% shards., , , , , , , , yes
      if(preference = "yes"){
        break
      } 
    } 
  }
  loop %numClicks%{
    sleep 200
    click
    sleep 500
  }
return