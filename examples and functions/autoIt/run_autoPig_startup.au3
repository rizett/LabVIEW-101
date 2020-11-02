;Run PIGI LabView Programs from Startup

#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>

;wait 30s for Windows to load
;sleep(30000)

; ask user if they want to abort auto-startup
$abortBox = MsgBox(16,"Abort?","Click *OK* to abort automatic execution (otherwise, click nothing)", 10)
If $abortBox == 1 Then
   Exit
EndIf

;Go to labView manager library
   Local $hWnd = "LLB Manager"
   WinSetState($hWnd,"", @SW_SHOW)
   WinActivate("LLB Manager")

Sleep (500)

;Locate main program and open
   ;move mouse
   MouseMove(115, 210, 5) ;locate stop button
   sleep(500)
   ;open
   MouseClick($MOUSE_CLICK_LEFT)
   MouseClick($MOUSE_CLICK_LEFT)

;wait while it loads
Sleep (3500)

;Go back to to labView manager library
   Local $hWnd = "LLB Manager"
   WinSetState($hWnd,"", @SW_SHOW)
   WinActivate("LLB Manager")

Sleep (1000)

;Locate program that controls autoit and open
   ;move mouse
   MouseMove(110, 230, 5) ;locate stop button
   sleep(500)
   ;open
   MouseClick($MOUSE_CLICK_LEFT)
   MouseClick($MOUSE_CLICK_LEFT)
   sleep(2000)

; Start the piggy automation/acquisition
   ;activate LV window
   Local $hWnd = "PIGI_automation"
   WinSetState($hWnd,"", @SW_SHOW)
   WinActivate("PIGI_automation")
   ;adjust window size
   WinMove($hWnd,"",100,100,600,550)
   sleep(500)
   ;move over start button and click
   MouseMove(180, 170, 5) ;locate start button
   sleep(1000)
   MouseClick($MOUSE_CLICK_LEFT)
