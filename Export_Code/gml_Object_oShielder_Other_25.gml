if instance_exists(myobj)
{
    shield_present = 1
    shield_angle = myobj.image_angle
    shield_img = myobj.image_index
}
else
    shield_present = 0
event_inherited()
if shield_present
{
    frz.spr1 = 416
    frz.spr1xoff = 0
    frz.spr1yoff = 0
    frz.spr1a = shield_angle
    frz.spr1i = shield_img
}
