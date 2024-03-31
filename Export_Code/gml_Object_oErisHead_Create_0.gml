var i;
canbeX = 1
hp = global.mod_serrisHealth
if (global.inventory[11] == 0)
    hp *= 1.5
maxhp = hp
damage = global.mod_serrisDamage
speed = 0
boosting = 0
jawoff = 2
fxtimer = 0
flashing = 0
bodylength = 14
roaring = 0
inrange = 0
facing = -1
direction = 180
turnspeed = 3
stun = 0
cooldown = 0
phase = 0
boostphase = 0
boostlaunch = 0
lock = 0
state = 10
statetime = 0
nextstate = 0
startx = x
tgt = 0
for (i = bodylength; i >= 0; i--)
{
    segment[i] = instance_create(x, y, oErisSegment)
    segment[i].x = (x + (i * 26))
    segment[i].order = i
    segment[i].image_angle = image_angle
    segment[i].direction = direction
    segment[i].depth = (-50 - i)
    if (i > 12)
    {
        segment[i].spr_normal = 1709
        segment[i].spr_frozen = 1710
        segment[i].spr_open = 1711
    }
    else if (i < 4 && i > 0)
    {
        segment[i].spr_normal = 781
        segment[i].spr_frozen = 783
        segment[i].spr_open = 782
    }
    else if (i == 0)
    {
        segment[i].sprite_index = sErisBody3
        segment[i].tail = 1
    }
}
alarm[0] = 1
alarm[1] = 120
