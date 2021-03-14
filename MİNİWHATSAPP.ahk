Gui, -Caption +hWndhMyGUI
Gui, Font, S14 CDefault Bold, Verdana
Gui, Add, Edit, x105 y100 w350 h30 vAssociatedVar, 
Gui, Add, Edit, x105 y180 w350 h30 vAssociatedVar2, 
Gui, Color, 333333

;------------------EXIT---------------------
Gui, Add , Picture, x540 y5 w15 h15 gSR2, C:\Users\MISTRAL1925\Desktop\FOTOGRAFLAR\iconlar\AAwhatsaSSSpp2p.png
;--------------------AÇIK RENK-----------------------
Gui, Add , Picture, x5 y5 w20 h20 gSR1, C:\Users\MISTRAL1925\Desktop\FOTOGRAFLAR\SiyahRenk.png
;--------------------KAPALI RENK-----------------------
Gui, Add , Picture, x26 y5 w20 h20 gSR3, C:\Users\MISTRAL1925\Desktop\FOTOGRAFLAR\GriRenk.png


Gui, Add , Picture, x355 y239 w150 h30 vState1 gSR4, C:\Users\MISTRAL1925\Desktop\FOTOGRAFLAR\iconlar\whatsSSSSapp2p.png
Gui, Add , Picture, x355 y239 w150 h30 vState0 gSR4, C:\Users\MISTRAL1925\Desktop\FOTOGRAFLAR\iconlar\whatsSSSSapp2p.png

Gui, Add , Picture, x55 y239 w150 h30 vState2 gSR5, C:\Users\MISTRAL1925\Desktop\FOTOGRAFLAR\iconlar\whatsAAAS3app2p.png
Gui, Add , Picture, x55 y239 w150 h30 vState3 gSR5, C:\Users\MISTRAL1925\Desktop\FOTOGRAFLAR\iconlar\whatsAAAS3app2p.png


Gui, Add , Picture, x0 y0 w560 h315, C:\Users\MISTRAL1925\Desktop\WHATSAPMİNİ3.png


Gui, Show, x423 y160 w560 h315,
Return


SR1:
Gui, Color, 333333
Return


SR3:
Gui, Color, CCCCCC
Return

SR4:
GuiControl, Hide, State0
Sleep, 250
GuiControl, Show, State0
Gui, Submit, NoHide
Run, https://wa.me/9%AssociatedVar%?text=%AssociatedVar2%
Sleep, 5000
Send, {Enter}
Return

SR5:
GuiControl, Hide, State3
Sleep, 250
GuiControl, Show, State3
Gui, Submit, NoHide
Run, https://wa.me/9%AssociatedVar%?text=%AssociatedVar2%
Return


































WM_LBUTTONDOWN(wParam, lParam, msg, hWnd)
{
    static init := OnMessage(0x0201, "WM_LBUTTONDOWN")
    global hMyGUI
    if (hwnd = hMyGUI)
        DllCall("user32.dll\PostMessage", "ptr", hMyGUI, "uint", 0x00A1, "ptr", 2, "ptr", 0)
}



SR2:
GuiEscape:
GuiClose:
ExitApp


