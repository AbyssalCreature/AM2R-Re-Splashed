if instance_exists(oCharacter)
{
    if (oCharacter.aimdirection == 0)
        x += 2
    if (oCharacter.aimdirection == 1)
        x -= 2
    if (oCharacter.aimdirection == 2)
    {
        x += 3
        y -= 3
    }
    if (oCharacter.aimdirection == 3)
    {
        x -= 3
        y -= 3
    }
    if (oCharacter.aimdirection == 4)
    {
        x += 3
        y += 3
    }
    if (oCharacter.aimdirection == 5)
    {
        x -= 3
        y += 3
    }
    if (oCharacter.aimdirection == 6)
        y -= 2
    if (oCharacter.aimdirection == 7)
        y += 2
}
sprite_index = sMflash
if global.wbeam
    sprite_index = sWMflash
if global.pbeam
    sprite_index = sPMflash
if global.ibeam
    sprite_index = sIMflash
image_speed = 0.5
