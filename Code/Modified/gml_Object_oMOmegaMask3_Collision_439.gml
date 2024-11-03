if (oBeam.chargebeam && (!oBeam.ibeam) && (!oBeam.wbeam) && (!oBeam.pbeam) && (!oBeam.sbeam) && global.missiles == 0 && global.smissiles == 0)
{
    if (oMOmega.myhealth > 0 && oMOmegaMask.image_index != 0)
    {
        if (oMOmega.flashing == 0)
        {
            with (oMOmega)
            {
                dmg = 30
                dmg = global.mod_omegadamagebackmissile
                flashtime = 60
                eyes_close = 15
            }
            if (other.smissile == 1)
            {
                with (oMOmega)
                {
                    dmg = 150
                    dmg = global.mod_omegadamagebacksuper
                    flashtime = 120
                    eyes_close = 30
                }
            }
            with (oMOmega)
                event_user(0)
            with (other.id)
                event_user(0)
            with (other.id)
                instance_destroy()
            bld = instance_create((x + (8 * image_xscale)), (y - 24), oFXAnimSpark)
            bld.sprite_index = sMGammaBlood1
            bld.image_speed = 0.5
            bld.image_alpha = 0.6
            bld.image_xscale = image_xscale
            bld.image_yscale = 1
            bld.depth = -20
        }
        else
        {
            with (other.id)
                event_user(1)
        }
    }
}
