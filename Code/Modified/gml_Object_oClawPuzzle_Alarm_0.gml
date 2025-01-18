with (oClawOrb)
    event_user(0)
ecam = instance_create(x, (y - 16), oEventCamera)
ecam.targetx = oA1MovingPlatform.x
ecam.targety = y
ecam.ratio = 8
ecam.alarm[0] = 450
view_object[0] = oEventCamera
with (oA1MovingPlatform)
    alarm[0] = 60
global.event[54] = 1
event_user(0)
