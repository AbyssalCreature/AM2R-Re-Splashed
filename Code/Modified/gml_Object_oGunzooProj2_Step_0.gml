if (image_alpha < 1)
    image_alpha += 0.1
if active
{
    if (x > oCharacter.x)
        hspeed -= 0.08
    if (x < oCharacter.x)
        hspeed += 0.08
    if (y > (oCharacter.y - 15))
        vspeed -= 0.05
    if (y < (oCharacter.y - 15))
        vspeed += 0.05
    if (speed > 2)
        speed = 2
}
