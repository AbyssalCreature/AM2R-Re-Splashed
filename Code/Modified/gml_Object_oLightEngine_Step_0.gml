event_user(1)
if fadeout
{
    if (image_alpha > 0)
        image_alpha -= 0.01
    else
        instance_destroy()
}
widescreen = oControl.widescreen
