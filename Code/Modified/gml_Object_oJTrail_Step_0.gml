if (oCharacter.state == 15)
{
    sx[7] = sx[6]
    sx[6] = sx[5]
    sx[5] = sx[4]
    sx[4] = sx[3]
    sx[3] = sx[2]
    sx[2] = sx[1]
    sx[1] = sx[0]
    sx[0] = x
    sy[7] = sy[6]
    sy[6] = sy[5]
    sy[5] = sy[4]
    sy[4] = sy[3]
    sy[3] = sy[2]
    sy[2] = sy[1]
    sy[1] = sy[0]
    sy[0] = y
    x = oCharacter.x
    y = oCharacter.y
    if (image_alpha > 0)
        image_alpha -= 0.1
    else
        instance_destroy()
    if (images < 8)
        images += 1
}
else
    instance_destroy()
