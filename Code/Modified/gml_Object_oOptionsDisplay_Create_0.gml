var i;
y -= 8
global.curropt = 0
active = 0
targetY = y
timer = 0
SPACER = 16
buttonsEnabled = 1
if ((os_type != os_android && (!gamepad_is_connected(global.gamepadIndex))) || (os_type == os_android && ((!global.joydetected) || global.compatibilitymode)))
    buttonsEnabled = 0
view_object[0] = id
alarm[0] = 5
i = 0
if (os_type != os_android)
{
    opFullscreen = i++
    opScale = i++
}
opVSync = i++
opSensitivity = i++
opWidescreen = i++
opShowHUD = i++
opShowMap = i++
opCounterStyle = i++
opShowHints = i++
if buttonsEnabled
    opButtonType = i++
opShowScans = i++
opLanguage = i++
menuSize = i
vTargetY = ((18 * menuSize) + 72)
i = 0
repeat (menuSize + 1)
{
    canEdit[i] = 1
    i++
}
langCount = array_length_1d(global.language)
for (i = 0; i < langCount; i += 1)
{
    ini_open(global.language[i])
    lang[i] = ini_read_string("Header", "Language", "[!]")
    langAuthor[i] = ini_read_string("Header", "Author", "[!]")
    langAuthor2[i] = ini_read_string("Header", "Author2", "[!]")
    ini_close()
}
event_user(0)
event_user(3)
global.tiptext = tip[global.curropt]
