var ang;
if (sprite_index == sXCrystal && floor(image_index) == 14)
{
    sprite_index = sHXPickup
    image_index = 0
    image_speed = 0.15
}
if (xShake == 1)
{
    x += 1
    PlaySoundMono(sndCrystalShake)
    xShake = 2
}
else if (xShake == 2)
    xShake = 3
else if (xShake == 3)
{
    x -= 1
    xShake = 0
}
if (xShake == 4)
{
    x -= 1
    PlaySoundMono(sndCrystalShake2)
    xShake = 5
}
else if (xShake == 5)
    xShake = 6
else if (xShake == 6)
{
    x += 1
    xShake = 0
}
if (xShake == 7)
{
    x -= 1
    xShake = 8
}
else if (xShake == 8)
    xShake = 9
else if (xShake == 9)
{
    x += 1
    xShake = 7
}
if (transition == 1)
{
    if (pixelateTimer == 70)
    {
        PlaySoundMono(sndXMorph2)
        sizeX = 2
        sizeY = 2
    }
    if (pixelateTimer > 0)
        pixelateTimer--
    if (pixelateTimer >= 30)
    {
        image_xscale += 0.025
        image_yscale += 0.025
    }
    else if (pixelateTimer >= 10)
    {
        sizeX -= 0.05
        sizeY -= 0.05
        if (sizeX < 1)
            sizeX = 1
        if (sizeY < 1)
            sizeY = 1
    }
}
if (transition == 2)
{
    if (pixelateTimer == 115)
        PlaySoundMono(sndXMorph1)
    if (pixelateTimer > 0)
        pixelateTimer--
    if (pixelateTimer > 60)
    {
        sizeX += 0.09
        sizeY += 0.06
    }
    else if (pixelateTimer > 0)
    {
        if (pixelateTimer == 60)
        {
            sprite_index = sHornoadXFall
            image_speed = 0
        }
        sizeX -= 0.09
        sizeY -= 0.06
    }
}
if (stage == 1)
{
    ang = point_direction(x, y, targetx, targety)
    velX += lengthdir_x(Speed, ang)
    velY += lengthdir_y(Speed, ang)
    velX = clamp(velX, -3, 3)
    velY = clamp(velY, -3, 3)
    x += velX
    y += velY
}
if (stage == 2)
{
    if (point_distance(x, y, oEndingHornoad.x, (oEndingHornoad.y - 12)) > 2)
    {
        dir = point_direction(x, y, oEndingHornoad.x, (oEndingHornoad.y - 14))
        x += lengthdir_x(2.5, dir)
        y += lengthdir_y(2.5, dir)
    }
    else
    {
        stage = 3
        sprite_index = sXInfect
        PlaySoundMono(sndXInfect)
        image_index = 0
        image_speed = 0.16666666666666666
    }
}
if (stage == 3)
{
    if (image_index < 8)
    {
        x = oEndingHornoad.x
        y = (oEndingHornoad.y - 14)
    }
    else
    {
        image_speed = 0
        image_xscale = 0
        image_yscale = 0
        y = (oEndingHornoad.y - 8)
        stage = 0
    }
}
if (stage == 4)
{
    if (point_distance(x, y, 128, 144) > 1)
    {
        spd -= 0.1
        dir = point_direction(x, y, 128, 144)
        x += lengthdir_x(spd, dir)
        y += lengthdir_y(spd, dir)
    }
    else
        stage = 5
}
if (stage == 5)
    transition = 2
