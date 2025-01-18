if (oBeam.chargebeam && (!oBeam.ibeam) && (!oBeam.wbeam) && (!oBeam.pbeam) && (!oBeam.sbeam) && global.missiles == 0 && global.smissiles == 0)
{
    if canbehit
    {
        event_user(0)
        with (other.id)
        {
            event_user(0)
            instance_destroy()
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
