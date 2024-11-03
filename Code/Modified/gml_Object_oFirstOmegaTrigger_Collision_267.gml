ecam = instance_create(x, (y - 16), oEventCamera2)
ecam.targetx = 640
ecam.targety = y
ecam.ratio = 8
view_object[0] = oEventCamera2
with (oMOmega)
{
    state = 50
    statetime = 0
}
with (oGFTrooperGreen)
    active = 1
mus_current_fadeout()
sfx_stop(sndSJLoop)
scan_log(15, get_text("ScanEvents", "ScanBioform"), 180, 0)
global.event[300] = 1
instance_destroy()
