if (beamIndex == 1)
    oTank.iceOff = 1
else
    oTank.iceOff = 0
if (damaged == 0)
{
    image_angle = direction
    if (canfire && cooldown == 0)
    {
        if (charge_frame < 22)
            charge_frame += 0.25
        else
        {
            shots = (3 - beamIndex)
            alarm[2] = 30
            cooldown = 230
            with (oTank)
                tgt_aangle = 20
        }
    }
    if (cooldown > 0)
    {
        cooldown -= 1
        if (charge_frame > 0 && shots == 0)
            charge_frame -= 1
        if (cooldown == 100)
        {
            if (beamIndex < 2)
                beamIndex += 1
            else
                beamIndex = 0
            switch beamIndex
            {
                case 0:
                    chargeType = 769
                    beamType = "PLASMA"
                    break
                case 1:
                    chargeType = 1721
                    beamType = "ICE"
                    break
                case 2:
                    chargeType = 1722
                    beamType = "WAVE"
                    break
            }

        }
    }
}
if (shaking > 0)
{
    shaking -= 1
    offx = random_range(-1, 1)
    offy = random_range(-1, 1)
}
else
{
    offx = 0
    offy = 0
}
if (flashing > 0)
    flashing -= 1
if (knockback > 0)
{
    knockback -= 1
    with (oTank)
        aangle -= 5
}
if damaged
{
    if (image_angle > 180)
        image_angle -= 360
    if (image_angle > 0)
        image_angle -= 1
    if (image_angle < 0)
        image_angle += 1
}
charge = (charge_frame / 22)
if (!damaged)
    image_speed = max(0, ((charge_frame / 22) / 1.8))
