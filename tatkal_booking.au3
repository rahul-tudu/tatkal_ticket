#include <MsgBoxConstants.au3>

HotKeySet("{F1}", "Terminate")
HotKeySet("{F7}", "first_page_fill")
; start the program then press the F7 key to fill the first page that is the traveller's credentials
HotKeySet("{F6}", "last_page_fill")
; then when the payment page comes, press the F6 key to automatically fill the entries
;F1 will terminate the program
While(1)
WEnd
Func first_page_fill()
   Send("Rahul Tudu{TAB}20{TAB}{DOWN}{TAB}{DOWN}{TAB}{DOWN}{DOWN}")
   ; The above tabs are arranged in a such a way so as to book a non-veg meal for a male person in the lower birth.
   ;Note for other trains it may not work, because number of tabs may differ
EndFunc
Func last_page_fill()
   Send("{TAB}4591510113291234{TAB}05{TAB}2018")
   Send("{TAB}{TAB}Rahul Tudu{TAB}1234{TAB}{TAB}")
   ; this one fills the card details
   ; in both of the cases, captha is to filled manually
   Exit
EndFunc
Func Terminate()
   Exit
EndFunc