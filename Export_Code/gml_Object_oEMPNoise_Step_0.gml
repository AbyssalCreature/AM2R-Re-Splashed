if (!global.sensitivitymode)
{
    xoff = irandom(128)
    yoff = irandom(128)
}
image_alpha -= 0.1
if (image_alpha <= 0)
    instance_destroy()
with (oCharacter)
    chargebeam = 0
