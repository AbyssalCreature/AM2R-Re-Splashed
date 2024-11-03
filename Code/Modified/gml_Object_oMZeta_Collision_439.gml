if (oBeam.chargebeam && (!oBeam.ibeam) && (!oBeam.wbeam) && (!oBeam.pbeam) && (!oBeam.sbeam) && global.missiles == 0 && global.smissiles == 0)
{
    if (myhealth > 0)
    {
        if (flashing == 0)
        {
            event_user(0)
            with (other.id)
                event_user(0)
            with (other.id)
                instance_destroy()
        }
        else
        {
            with (other.id)
                event_user(1)
        }
    }
}
else
{
    with (other.id)
    {
        event_user(1)
        instance_destroy()
    }
}
