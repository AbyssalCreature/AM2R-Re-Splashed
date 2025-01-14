if (!absorb)
{
    relativeX = lerp(relativeX, 0, 0.03)
    relativeY = lerp(relativeY, 0, 0.03)
    x = (oCharacter.x + relativeX)
    y = ((oCharacter.y - (oCharacter.sprite_height / 2)) + relativeY)
}
if absorb
{
    if (statetime == 0)
    {
        global.enablecontrol = 0
        with (oCharacter)
        {
            fxtimer = other.screwattackpickupfx
            speedmultiplier = 0
            speedmultiresettimer = 10000
            kLeft = 0
            kRight = 0
            kUp = 0
            kDown = 0
            kJump = 0
            kJumpPressed = 0
            kRun = 0
            kAim = 0
            kFire = 0
            kMissile = 0
            charge = 0
            Mute_Loops()
        }
        with (oFXTrail)
        {
            if (sprite_index == sScrewSpark)
                visible = false
        }
        image_xscale = 1
        image_xscale = 1
        with (oCharacter)
        {
            speedmultiplier = 0
            speedmultiresettimer = 10000
            sfx_stop(sndCoreXIdle)
            alarm[0] = -1
            Mute_Loops()
        }
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
        }
        else
            Unmute_Loops()
        with (oCharacter)
            speedmultiresettimer = 0
        global.enablecontrol = 1
        if (global.item[9] == 0)
        {
            global.item[9] = 1
            global.currentsuit = 2
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
        instance_destroy()
    }
}
statetime++
