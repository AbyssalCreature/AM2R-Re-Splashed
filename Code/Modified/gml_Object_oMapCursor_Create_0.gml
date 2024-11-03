x = (global.mapposx * 8)
y = (global.mapposy * 8)
y += 32
view_xview[0] = (x - 160)
view_yview[0] = (y - 120)
image_speed = 0.2
visible = false
alarm[0] = 2
active = 0
alarm[1] = 5
state = 0
if (global.mapmarker == 1)
{
    state = 2
    marker = instance_create(x, y, oMapMarker)
    marker.editing = 0
}
else
    state = 0
keycounter = 0
camera = instance_create((x + 4), (y + 4), oMapCamera)
view_object[0] = camera
