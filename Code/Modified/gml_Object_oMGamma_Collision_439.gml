if (oBeam.chargebeam && (!oBeam.ibeam) && (!oBeam.wbeam) && (!oBeam.pbeam) && (!oBeam.sbeam) && global.missiles == 0 && global.smissiles == 0)
{
    if canbehit
    {
        if (state != 7)
        {
            event_user(0)
            with (other.id)
                event_user(0)
        }
        else
        {
            with (other.id)
                event_user(1)
        }
    }
}
