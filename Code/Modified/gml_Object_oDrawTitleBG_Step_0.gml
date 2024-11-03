if fadein
{
    if (image_alpha < 1)
        image_alpha += 0.05
}
if fadeout
{
    image_alpha -= 0.05
    if (image_alpha <= 0)
    {
        global.gamestarted = 1
        instance_create(0, 0, oGameSelMenu)
        instance_create(0, 0, oCheats)
        instance_destroy()
    }
}
