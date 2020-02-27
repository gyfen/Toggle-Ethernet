#a::
adapter:="Ethernet" ; set to the adapter name

If ConnectedToInternet()
    runwait,netsh interface set interface %adapter% disabled,,hide
else
    runwait,netsh interface set interface %adapter% enabled,,hide

; https://autohotkey.com/board/topic/80587-how-to-find-internet-connection-status/?hl=connection

ConnectedToInternet(flag=0x40) { 
Return DllCall("Wininet.dll\InternetGetConnectedState", "Str", flag,"Int",0) 
}