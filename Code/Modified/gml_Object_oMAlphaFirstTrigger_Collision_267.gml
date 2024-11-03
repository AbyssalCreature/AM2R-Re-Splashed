global.event[0] = 1
ecam = instance_create(x, (y - 16), oEventCamera2)
ecam.targetx = oMEgg1.x
ecam.targety = y
ecam.ratio = 8
ecam.alarm[0] = 320
ecam.focusbacktime = 25
view_object[0] = oEventCamera2
mus_current_fadeout()
with (oMAlphaTriggerFirstCocoon)
{
    alarm[2] = 60
    alarm[0] = 250
    alarm[1] = 280
}
instance_destroy()
