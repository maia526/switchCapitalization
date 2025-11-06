#Requires AutoHotkey v2.0

^!c::{
    old_clip := A_Clipboard
    SendEvent "^c"
    selected := A_Clipboard
    newText := ""
    for , char in StrSplit(selected) {
        if (char == StrUpper(char)){
            newText .= StrLower(char)
        }
            
        else{
            newText .= StrUpper(char)
        }
    }
    A_Clipboard := newText
    Send "^v"
    Sleep 500
    A_Clipboard := old_clip

    return
}