image_speed = 0.16
state = 0
statetime = 0
flashing = 0
fxtimer = 0
roomcenter_x = (room_width / 2)
roomcenter_y = (room_height / 2)
frequency_x = (0.1 + random_range(-0.05, 0.05))
amplitude_x = (0.5 + random_range(-0.1, 0.1))
timer_x = irandom(100)
frequency_y = (0.1 + random_range(-0.05, 0.05))
amplitude_y = (0.5 + random_range(-0.1, 0.1))
timer_y = irandom(100)
xx = 0
yy = 0
drawaura = 1
roomoffsety = 0
switch room
{
    case rm_a2a04:
        sprite_index = sCoreXArachnus
        break
    case 128:
        sprite_index = sCoreXTorizo
        roomoffsety = -100
        break
    case 281:
        sprite_index = sCoreXSerris
        break
    case 387:
        sprite_index = sCoreXGenesis
        break
}

alarm[1] = 1
glow = 0
frequency_glow = 0.1
amplitude_glow = 1
timer_glow = 0
screwattackpickupframe = irandom(4)
screwattackpickupangle = irandom(359)
screwattackpickupfx = 0
