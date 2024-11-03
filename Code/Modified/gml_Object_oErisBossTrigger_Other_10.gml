instance_create(784, 144, oErisHead)
with (oDoorA5)
    event_user(0)
ecam = instance_create(x, (y - 16), oEventCamera)
ecam.targetx = 480
ecam.targety = 120
ecam.ratio = 8
ecam.alarm[0] = 300
view_object[0] = oEventCamera
mus_current_fadeout()
instance_destroy()
