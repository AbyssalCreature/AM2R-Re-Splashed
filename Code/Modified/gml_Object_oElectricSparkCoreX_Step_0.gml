if instance_exists(oCoreXShell)
{
    x = oCoreXShell.x
    y = oCoreXShell.y
    if (image_alpha > 0)
        image_alpha -= 0.0166
    else
        instance_destroy()
}
