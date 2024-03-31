if (absorb && (!absorbDone))
{
    absorbDone = 1
    with (oCharacter)
        speedmultiresettimer = 0
    global.enablecontrol = 1
    if (global.item[11] == 0)
    {
        global.item[11] = 1
        global.ibeam = 1
    }
    with (instance_find(oFXTrail, (instance_number(oFXTrail) - 1)))
    {
        if (sprite_index == sScrewSpark)
        {
            visible = true
            sprite_index = sScrewAttack
            image_index = other.screwattackpickupframe
            image_alpha = 1
            image_angle = other.screwattackpickupangle
            image_blend = c_white
            image_xscale = 1
            image_yscale = 1
        }
    }
}
