makeActive()
setCollisionBounds(-10, -14, 14, 14)
myhealth = 300
damage = 16
stuntime = 4
hpush = 6
vpush = -3
hitmissileexpl = 0
hitsound = 76
deathsound = 80
canfreeze = 0
platyoffset = -6
frozenspr = 358
flipx = 0
target = 0
state = 2
clawangle = 0
clawx = -9
clawy = -1
fangy = 8
stun = 0
flashing = 0
charge = 0
yoff = 0
platform = -4
statetime = 0
fxtimer = 0
hasmissile = 0
clawstate = 0
clawoffset = 0
if (global.event[160] == 0)
{
    text1 = "Controls"
    text1 = get_text("Buttons", "Controls")
    text2 = "Hold | - Jump / | - Grab"
    text2 = get_text("InGameHints", "Autoad_Text")
    btn1_name = "Jump"
    btn2_name = "Fire"
    duration = 500
    make_notification(text1, text2, duration, btn1_name, btn2_name)
    global.event[160] = 1
}
