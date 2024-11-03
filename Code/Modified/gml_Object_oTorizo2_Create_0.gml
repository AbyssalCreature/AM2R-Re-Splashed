canbeX = 0
CollisionBottom = 0
CollisionTop = 0
CollisionLeft = 0
CollisionRight = 0
WallUp = 288
i = 0
gravity = 0
gravity_direction = 270
state = 0
statetime = 0
globaltime = 0
phase = 0
facingplayer = 0
turning = 0
damage = global.mod_torizondamageform2
canbehit = 1
flashing = 0
fxtimer = 0
mycam = instance_create(x, y, oTorizo2Cam)
targetx = 0
targety = 144
targetplayer = 0
xAcc = 0
yAcc = 0
maxSpeed = 0
move = 1
usedbirds = 0
if (global.difficulty < 2)
{
    myhealth = global.mod_torizohealthform2
    hpforattack1 = 150
    hpforattack2 = 80
    stayaway = 1
}
else
{
    myhealth = global.mod_torizohealthform2hard
    hpforattack1 = 220
    hpforattack2 = 110
    stayaway = 0
}
i = 0
repeat (18)
{
    spk = instance_create((32 + (i * 16)), 432, oTorizoSpikes)
    spk.alarm[0] = (300 + (i * 90))
    spk = instance_create((592 - (i * 16)), 432, oTorizoSpikes)
    spk.alarm[0] = (300 + (i * 90))
    i += 1
}
wings = instance_create(x, (y - 65), oTorizoWings)
