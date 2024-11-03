canbeX = 1
hp = global.mod_serrisHealth
if (global.item[11] == 0)
    hp *= 2
damage = global.mod_serrisDamage
phase = 0
bodylength = 16
stepdelay = 1
flashing = 0
roaring = 0
inrange = 0
facing = 1
speed = 0
turnspeed = 4
speedmult = 1
stun = 0
for (i = 1; i < (bodylength - 1); i += 1)
{
    if (i >= 4)
    {
        mybody[i] = instance_create(10, 264, oErisBody1)
        if (i >= 13)
        {
            mybody[i].spr_normal = 1709
            mybody[i].spr_frozen = 1710
            mybody[i].spr_open = 1711
        }
    }
    else
        mybody[i] = instance_create(10, 264, oErisBody2)
    mybody[i].depth = (-50 - i)
    mybody[i].order = i
}
tailobj = instance_create(10, 264, oErisBody3)
stepstaken = 0
for (l = 0; l <= bodylength; l += 1)
{
    prev_x[l] = ds_queue_create()
    prev_y[l] = ds_queue_create()
}
state = 10
nextstate = 0
statetime = 0
tgt = 0
i = 0
repeat (20)
{
    targetx[i] = x
    targety[i] = y
    i += 1
}
jawoff = 0
tgtx = x
tgty = y
startx = x
alarm[0] = 1
alarm[1] = 120
tailx = 0
taily = 0
boosting = 0
fxtimer = 0
boostphase = 0
boostspdmult = 1
boostspddelay = 1
stepdelayfinal = stepdelay
use2 = 0
