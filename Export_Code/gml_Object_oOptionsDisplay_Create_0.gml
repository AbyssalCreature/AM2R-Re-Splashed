global.curropt = 0
lastitem = 12
active = 0
alarm[0] = 5
i = 0
repeat (13)
{
    global.canedit[i] = 1
    i += 1
}
targety = 0
view_object[0] = id
timer = 0
langno = array_length_1d(global.language)
for (i = 0; i < langno; i += 1)
{
    ini_open(global.language[i])
    lang[i] = ini_read_string("Header", "Language", "[!]")
    ini_close()
}
event_user(0)
event_user(3)
global.tiptext = tip[global.curropt]
