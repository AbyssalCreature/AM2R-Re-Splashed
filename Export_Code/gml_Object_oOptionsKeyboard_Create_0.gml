global.curropt = 0
lastitem = 16
active = 0
alarm[0] = 5
i = 0
repeat (17)
{
    canedit[i] = 1
    i += 1
}
if (global.opaimstyle == 0)
    canedit[7] = 0
targety = 0
view_object[0] = id
editing = 0
timer = 0
event_user(0)
with (oSS_Control)
    active = 0
with (oSS_Fg)
{
    active = 0
    hidechangetip = 1
}
