hilight = 1
active = 0
saveexists = 0
saveroom = 0
targety = y
y = 0
alarm[0] = 1
modeindex = 0
if oControl.mod_insanitymode
{
    mycolor = make_color_rgb(255, 36, 36)
    myslotbg = 327
    myslot = 1525
    myslotb = 1526
    myslotc = 1527
}
else
{
    mycolor = make_color_rgb(2, 207, 118)
    myslotbg = 162
    myslot = 487
    myslotb = 488
    myslotc = 489
}
if (oControl.mod_monstersextremecheck == 1)
    meticon = 328
else
    meticon = 129
