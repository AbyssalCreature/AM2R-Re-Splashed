if instance_exists(oCoreXShell)
{
    x = oCoreXShell.x
    y = oCoreXShell.y
}
if (state == 6)
{
    if (statetime == 0)
    {
        image_xscale = 1
        image_xscale = 1
        sa_image_index = round(random(2))
        sa_image_alpha = (1 + (fxtimer * 0.1))
        sa_image_blend = make_color_rgb((50 + random(200)), 255, (50 + random(200)))
    }
    with (oCharacter)
    {
        speedmultiplier = 0
        speedmultiresettimer = 10000
        sfx_stop(sndCoreXIdle)
        alarm[0] = -1
        Mute_Loops()
    }
    x = (oCharacter.x + relativeX)
    y = ((oCharacter.y - (oCharacter.sprite_height / 2)) + relativeY)
    relativeX = lerp(relativeX, 0, 0.1)
    relativeY = lerp(relativeY, 0, 0.1)
    if (image_xscale > 0)
    {
        image_xscale -= 0.0225
        image_yscale -= 0.0225
    }
    if (image_xscale <= 0)
    {
        if (room == rm_a2a04)
        {
            with (instance_create((oCharacter.x - 8), (oCharacter.y - 8), scr_itemsopen(oControl.mod_jumpball)))
            {
                visible = false
                active = 1
            }
        }
        else
            Unmute_Loops()
        with (oCharacter)
            speedmultiresettimer = 0
        global.enablecontrol = 1
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
        instance_destroy()
    }
}
