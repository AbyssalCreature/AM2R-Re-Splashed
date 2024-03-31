if (global.event[event] > 0)
{
    active = 1
    image_index = 1
    bat = instance_create((x + 8), (y + 8), oBattery)
    bat.state = 10
    bat.statetime = 0
    bat.alarm[0] = 1
    bat.targetx = (x + 8)
    bat.targety = (y + 8)
    with (oDoor)
        lock = 0
}
