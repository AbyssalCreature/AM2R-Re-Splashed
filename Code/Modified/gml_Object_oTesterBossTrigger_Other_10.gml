ecam = instance_create(x, (y - 16), oEventCamera)
ecam.targetx = 160
ecam.targety = 120
ecam.ratio = 8
ecam.alarm[0] = 300
view_object[0] = oEventCamera
instance_create(160, 120, oTester)
with (oDoor)
    event_user(0)
mus_current_fadeout()
instance_destroy()
