if (global.waterlevel != targety)
{
    if (global.waterlevel > targety)
        global.waterlevel -= 1
    if (global.waterlevel < targety)
        global.waterlevel += 1
    alarm[0] = delay
}
else
    instance_destroy()
