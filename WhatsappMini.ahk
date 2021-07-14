;Designer : Serdar Mutlu
;Uygulama dili "AutoHotkey" https://www.autohotkey.com/
;Mail : serdarmutlugroup@gmail.com
;Uygulama Adı : WhatsappMini 14.07.2021
;Açıklama : Numara kaydetmenize gerek kalmadan whatsapp'tan mesaj göndermenizi sağlar (Masaüstü Uygulamasıdır)
;AutoHotkey ile veya WhatsappMini.exe ile kullanabilirsiniz

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

FileCreateDir, %A_Desktop%\WhatsappMini\Picture

F0 = https://i.imgur.com/RkJCwnV.png
F1 = %A_Desktop%\WhatsappMini\Picture\WhatsappMini.png
ifnotexist,%f1%
   urldownloadtofile,%f0%,%f1%

F2 = https://i.imgur.com/ULU2Z0h.png
F3 = %A_Desktop%\WhatsappMini\Picture\button-gonder.png
ifnotexist,%f3%
   urldownloadtofile,%f2%,%f3%

Gui, +hwndhMyGUI -Theme -caption +LastFound +AlwaysOnTop
Gui, Color, 333333, D1D1D1
WinSet, TransColor, 333333 255
Gui, Add , Picture, x475 y10 w15 h15 gKapat,
Gui, Add , Picture, x0 y0 w500 h300, %f1%
Gui, Font, s13
Gui, Add, Edit, x100 y92.3 w300 h26 vEdit1, 
Gui, Add, Edit, x100 y142.3 w300 h80 vEdit2,
Gui, Add , Picture, x320 y247.3 w80 h30 vState1 gButton1, %f3%
Gui, Show, xCenter yCenter w500 h300, WhatsappMini
Return

Button1:
GuiControl, Hide, State1
Sleep, 250
GuiControl, Show, State1
GuiControlGet, Edit1
GuiControlGet, Edit2
Gui, Submit, NoHide
Run, https://wa.me/9%AssociatedVar%?text=%AssociatedVar2%
Sleep, 5000
Send, {Enter}
Return

WM_LBUTTONDOWN(wParam, lParam, msg, hWnd)
{
    static init := OnMessage(0x0201, "WM_LBUTTONDOWN")
    global hMyGUI
    if (hwnd = hMyGUI)
        DllCall("user32.dll\PostMessage", "ptr", hMyGUI, "uint", 0x00A1, "ptr", 2, "ptr", 0)
}

Kapat:
GuiEscape:
GuiClose:
ExitApp