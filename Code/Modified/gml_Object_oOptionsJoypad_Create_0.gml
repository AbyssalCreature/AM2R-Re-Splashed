var i;
global.curropt = 1
lastitem = 22
active = 0
alarm[0] = 5
i = 0
repeat (23)
{
    canedit[i] = 1
    i += 1
}
if (global.opaimstyle == 0)
    canedit[13] = 0
targety = 0
view_object[0] = id
editing = 0
readjoy = 0
timer = 0
event_user(0)
with (oSS_Control)
    active = 0
with (oSS_Fg)
{
    active = 0
    hidechangetip = 1
}
global.tiptext = tip[global.curropt]
for (i = 0; i < 16; i++)
    linaxlast[i] = 0
