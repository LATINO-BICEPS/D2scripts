#NoEnv
#SingleInstance Force
#KeyHistory 0
SetBatchLines -1
ListLines Off
SendMode Input
state=0

Alt & A::
  state:=0
  Hotkey, ~*F3, Toggle
return

F2::
  state:=!state
  if state
    SetTimer, movement, On
  else
    SetTimer, movement, Off
return

movement() {
  Random, movementInterval, 200, 1200
  Random, stopInterval, 500, 1500
  moveLeftModified(movementInterval)
  sleep, stopInterval
  moveRightModified(movementInterval)

}

moveLeft(timeToMove) {
  SendInput, {a down}
  Sleep, timeToMove
  SendInput, {a up}
}

moveRight(timeToMove) {
  SendInput, {d down}
  Sleep, timeToMove
  SendInput, {d up}
}

moveBack(timeToMove) {
  SendInput, {s down}
  Sleep, timeToMove
  SendInput, {s up}
}

moveLeftModified(timeToMove) {
  SendInput, {a down}
  SendInput, {s down}
  Sleep, timeToMove
  SendInput, {a up}
  SendInput, {s up}
}

moveRightModified(timeToMove) {
  SendInput, {d down}
  SendInput, {s down}
  Sleep, timeToMove
  SendInput, {d up}
  SendInput, {s up}
}

~^s::
  Reload
return