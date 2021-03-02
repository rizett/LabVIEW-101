;This program adjusts the size of the LabVIEW outline word document and then displays a message box.

; First, import some packages
   #include <AutoItConstants.au3>
   #include <MsgBoxConstants.au3>

;Create a warning message box
   ;Documentation: https://www.autoitscript.com/autoit3/docs/functions/MsgBox.htm
   ;MsgBox ( flag, "title", "text" [, timeout = 0 [, hwnd]] )
   MsgBox (48, "Warning!", "Your computer is under alien control!!", 10)

;Wait briefly
   Sleep (500)

;Activate the word document that will be moved / resized
   Local $hWnd = "LabVIEW101_week12" ;$hWnd is the window handle
   WinSetState($hWnd,"", @SW_SHOW) ;bring the screen to the front
   Sleep (250)
   WinActivate("LabVIEW101_week12")
   Sleep (1000)

;Adjust window size
   WinMove($hWnd,"",50,50,500,500) ;position = left, bottom, width, height
   sleep(1000)

;Click somewhere and begin typing
   MouseMove(200, 300, 5)
   sleep(1000)
   MouseClick($MOUSE_CLICK_LEFT)
   sleep(1000)
   For $a = 1 TO 4
	  Send("{ENTER}")
	  sleep(100)
   Next
   Send("As of " & @HOUR & ":" & @MIN & " on " & @MDAY & "/" & @MON & "/" & @YEAR )
   Send("{ENTER}")
   Send("Your computer is under alien control!")
   sleep(1000)

;Message box
   MsgBox ($MB_ICONWARNING, " ", "Just kidding :)", 30)