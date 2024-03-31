if (global.currentsuit <= 1)
{
    if (!instance_exists(oEMPNoise))
        instance_create(0, 0, oEMPNoise)
    else
    {
        with (oEMPNoise)
            image_alpha = 1
    }
}
