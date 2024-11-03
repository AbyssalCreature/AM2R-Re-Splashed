if (!instance_exists(oCharacter))
{
    instance_destroy()
    exit
}
sprite_index = sChargeBeamSpark2
if global.wbeam
    sprite_index = sChargeWBeamSpark2
if global.pbeam
    sprite_index = sChargePBeamSpark2
if global.ibeam
    sprite_index = sChargeIBeamSpark2
if (instance_number(oChargeBeamSpark1) == 0)
    instance_destroy()
else
{
    if (image_alpha < 1)
        image_alpha += 0.1
    scale = (1.5 - image_alpha)
    if (oChargeBeamSpark1.x != oChargeBeamSpark1.xprevious)
        x += (oChargeBeamSpark1.x - oChargeBeamSpark1.xprevious)
    if (oChargeBeamSpark1.y != oChargeBeamSpark1.yprevious)
        y += (oChargeBeamSpark1.y - oChargeBeamSpark1.yprevious)
    if (x != oChargeBeamSpark1.x)
        x += ((oChargeBeamSpark1.x - x) / 10)
    if (y != oChargeBeamSpark1.y)
        y += ((oChargeBeamSpark1.y - y) / 10)
    if (distance_to_point(oChargeBeamSpark1.x, oChargeBeamSpark1.y) < 2 || (oCharacter.state == 15 && oCharacter.vjump == 0))
        instance_destroy()
}
