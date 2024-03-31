rows = (room_height / 240)
columns = (room_width / 320)
row = 0
column = 0
view_object[0] = noone
with (oBackground)
    instance_destroy()
with (oControl)
    displaygui = 0
with (oCharacter)
{
    visible = false
    x = 16
    y = 16
    state = 33
}
with (oFlashLight2)
    instance_destroy()
background_color = 16711680
background_showcolor = 1
background_visible[0] = 0
view_xview[0] = (column * 320)
view_yview[0] = (row * 240)
