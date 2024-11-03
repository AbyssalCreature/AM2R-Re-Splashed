with (oControl)
    event_user(2)
with (camera)
    instance_destroy()
if (global.mapmarker == 1)
{
    with (marker)
        instance_destroy()
}
view_xview[0] = 0
view_yview[0] = 0
