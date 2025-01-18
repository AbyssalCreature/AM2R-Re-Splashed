var spd;
if (!instance_exists(oCharacter))
{
    instance_destroy()
    exit
}
if (oCharacter.chargebeam == 0)
    instance_destroy()
else
{
    x = (oCharacter.x + oCharacter.aspr2x)
    y = (oCharacter.y + oCharacter.aspr2y)
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
    if (oCharacter.chargebeam >= 1)
    {
        if (sprite_index == sChargeBeamSpark1)
            sprite_index = sChargeBeamSpark1B
        if (sprite_index == sChargeWBeamSpark1)
            sprite_index = sChargeWBeamSpark1B
        if (sprite_index == sChargePBeamSpark1)
            sprite_index = sChargePBeamSpark1B
        if (sprite_index == sChargeIBeamSpark1)
            sprite_index = sChargeIBeamSpark1B
    }
    if (instance_number(oChargeBeamSpark2) < 4)
        instance_create(((x + 30) - random(60)), ((y + 30) - random(60)), oChargeBeamSpark2)
}
if (instance_exists(oPickup) && oCharacter.chargebeam >= 1)
{
    with (oPickup)
    {
        if (distance_to_object(oChargeBeamSpark1) < 100)
        {
            spd = clamp((120 / distance_to_point(oCharacter.x, (oCharacter.y - 20))), 1, 3)
            x += lengthdir_x(spd, point_direction(x, y, oCharacter.x, (oCharacter.y - 20)))
            y += lengthdir_y(spd, point_direction(x, y, oCharacter.x, (oCharacter.y - 20)))
        }
    }
}
