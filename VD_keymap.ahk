;you should first Run this, then Read this
;Ctrl + F: jump to #useful stuff

;#SETUP START
#SingleInstance force
ListLines 0
SendMode "Input"
SetWorkingDir A_ScriptDir
KeyHistory 0
#WinActivateForce

ProcessSetPriority "H"

SetWinDelay -1
SetControlDelay -1

;include the library
#Include %A_LineFile%\..\VD.ahk
VD.animation_on:=false
#UseHook
;#SETUP END

VD.createUntil(4) ;create until we have at least 4 VD

return

;#useful stuff
!1::VD.goToDesktopNum(1)
!2::VD.goToDesktopNum(2)
!3::VD.goToDesktopNum(3)
!4::VD.goToDesktopNum(4)

;follow your window
!+1::VD.MoveWindowToDesktopNum("A",1), VD.goToDesktopNum(1)
!+2::VD.MoveWindowToDesktopNum("A",2), VD.goToDesktopNum(2)
!+3::VD.MoveWindowToDesktopNum("A",3), VD.goToDesktopNum(3)
!+4::VD.MoveWindowToDesktopNum("A",4), VD.goToDesktopNum(4)

; wrapping / cycle back to first desktop when at the last
^+#left::VD.goToRelativeDesktopNum(-1)
^+#right::VD.goToRelativeDesktopNum(+1)

f3::Exitapp