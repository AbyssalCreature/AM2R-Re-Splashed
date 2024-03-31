y = global.waterlevel
if (global.watertype == 0 && instance_exists(oWater))
    y += oWater.yoffset
if (instance_exists(oCharacter) && bubbles)
{
    if (oCharacter.y > (global.waterlevel + global.wateroffset))
        instance_create((oCharacter.x + random_range(-6, 6)), (oCharacter.y + random_range(-20, 8)), oLBubble)
}
