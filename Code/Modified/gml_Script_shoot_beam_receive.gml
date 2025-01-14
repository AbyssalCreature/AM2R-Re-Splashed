var ibeam, wbeam, pbeam, sbeam, i, tempArr, ID;
if (argument3 < 1)
    argument3 = 0
ibeam = global.ibeam
wbeam = global.wbeam
pbeam = global.pbeam
sbeam = global.sbeam
for (i = 0; i < ds_list_size(global.otherPlayerItems); i++)
{
    tempArr = ds_list_find_value(global.otherPlayerItems, i)
    ID = tempArr[0]
    if (ID == argument5)
    {
        ibeam = tempArr[7]
        wbeam = tempArr[8]
        pbeam = tempArr[9]
        sbeam = tempArr[10]
    }
}
flash = instance_create(argument0, argument1, oMflashMulti)
beams = 1
flash.ibeam = ibeam
flash.wbeam = wbeam
flash.pbeam = pbeam
if wbeam
    flash.sprite_index = sWMflash
if pbeam
    flash.sprite_index = sPMflash
if ibeam
    flash.sprite_index = sIMflash
if (wbeam && (!sbeam) && argument3 >= 1)
    beams = 2
if sbeam
    beams = 3
i = 0
repeat beams
{
    beam = instance_create(argument0, argument1, oBeam)
    beam.sax = argument4
    beam.myid = argument5
    beam.ibeam = ibeam
    beam.wbeam = wbeam
    beam.pbeam = pbeam
    beam.sbeam = sbeam
    beam.beamid = i
    beam.direction = argument2
    beam.maindir = argument2
    beam.speed = 6.4
    beam.offset = 0
    beam.chargebeam = argument3
    if wbeam
    {
        global.wbdir = (!global.wbdir)
        beam.wbeamdir = global.wbdir
        beam.speed = 9
        beam.depth = -1000
    }
    if ibeam
        beam.alarm[0] = (1 + random(5))
    if pbeam
        beam.alarm[1] = 1
    if (argument3 >= 1)
        beam.speed = 12
    beam.image_angle = argument2
    beam.fcolor = make_color_rgb(180, 180, 45)
    if wbeam
        beam.fcolor = make_color_rgb(240, 150, 210)
    if pbeam
        beam.fcolor = make_color_rgb(120, 250, 210)
    if ibeam
        beam.fcolor = make_color_rgb(75, 220, 255)
    beam.falpha = 0.4
    beam.fxscale = 0.6
    beam.fyscale = 0.6
    if sbeam
        beam.fxscale = 0.8
    if (argument3 >= 1)
    {
        beam.fxscale = 1
        beam.fyscale = 1
    }
    beam.damage = 5
    beam.chargebeam = 0
    if wbeam
        beam.damage *= 1.5
    if ibeam
        beam.damage *= 1.5
    if sbeam
        beam.damage *= 0.8
    if pbeam
        beam.damage *= 1.2
    if (argument3 >= 1)
    {
        beam.damage *= 3
        beam.chargebeam = 1
        if (wbeam && (!sbeam))
            beam.damage *= 0.6
    }
    if (ibeam == 0 && wbeam == 0 && pbeam == 0 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sBeam
        if (argument3 >= 1)
        {
            beam.sprite_index = sBeam2
            beam.offset = 4
        }
    }
    if (ibeam == 0 && wbeam == 1 && pbeam == 0 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sWBeam
        if (argument3 >= 1)
            beam.sprite_index = sWBeam2
        beam.offset = 10
    }
    if (ibeam == 1 && wbeam == 0 && pbeam == 0 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sIBeam
        if (argument3 >= 1)
        {
            beam.sprite_index = sIBeam2
            beam.image_xscale = 1.4
        }
    }
    if (ibeam == 0 && wbeam == 0 && pbeam == 1 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sPBeam
        if (argument3 >= 1)
            beam.sprite_index = sPBeam2
        beam.offset = 4
    }
    if (ibeam == 0 && wbeam == 0 && pbeam == 0 && sbeam == 1)
    {
        if (argument3 == 0)
        {
            beam.sprite_index = sSBeam
            beam.offset = 5
        }
        if (argument3 >= 1)
        {
            beam.sprite_index = sSBeam2
            beam.offset = 8
        }
    }
    if (ibeam == 0 && wbeam == 1 && pbeam == 0 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sWBeam
        if (argument3 >= 1)
            beam.sprite_index = sWBeam2
        beam.offset = 12
    }
    if (ibeam == 1 && wbeam == 0 && pbeam == 0 && sbeam == 1)
    {
        if (argument3 == 0)
        {
            beam.sprite_index = sISBeam
            beam.image_xscale = 0.6
        }
        if (argument3 >= 1)
        {
            beam.sprite_index = sISBeam
            beam.image_xscale = 1.2
        }
        beam.offset = 8
    }
    if (ibeam == 0 && wbeam == 0 && pbeam == 1 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sSPBeam
        if (argument3 >= 1)
            beam.sprite_index = sSPBeam2
        beam.offset = 8
    }
    if (ibeam == 1 && wbeam == 1 && pbeam == 0 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sIWBeam
        if (argument3 >= 1)
            beam.sprite_index = sIWBeam2
        beam.offset = 8
    }
    if (ibeam == 0 && wbeam == 1 && pbeam == 1 && sbeam == 0)
    {
        if (argument3 == 0)
            beam.sprite_index = sPBeam
        if (argument3 >= 1)
            beam.sprite_index = sPBeam2
        beam.offset = 8
    }
    if (ibeam == 1 && wbeam == 0 && pbeam == 1 && sbeam == 0)
    {
        if (argument3 == 0)
        {
            beam.sprite_index = sIPBeam
            beam.image_xscale = 0.6
            beam.image_yscale = 0.6
        }
        if (argument3 >= 1)
            beam.sprite_index = sIPBeam
        beam.offset = 8
    }
    if (ibeam == 1 && wbeam == 1 && pbeam == 0 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sIWBeam
        if (argument3 >= 1)
            beam.sprite_index = sIWBeam2
        beam.offset = 8
    }
    if (ibeam == 0 && wbeam == 1 && pbeam == 1 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sPBeam
        if (argument3 >= 1)
            beam.sprite_index = sPBeam2
        beam.offset = 8
    }
    if (ibeam == 1 && wbeam == 0 && pbeam == 1 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sISPBeam
        if (argument3 >= 1)
            beam.sprite_index = sISPBeam2
        beam.offset = 8
    }
    if (ibeam == 1 && wbeam == 1 && pbeam == 1 && sbeam == 0)
    {
        if (argument3 == 0)
        {
            beam.sprite_index = sIPBeam
            beam.image_xscale = 0.6
            beam.image_yscale = 0.6
        }
        if (argument3 >= 1)
            beam.sprite_index = sIPBeam
        beam.offset = 8
    }
    if (ibeam == 1 && wbeam == 1 && pbeam == 1 && sbeam == 1)
    {
        if (argument3 == 0)
            beam.sprite_index = sISWPBeam
        if (argument3 >= 1)
            beam.sprite_index = sISWPBeam2
        beam.offset = 8
    }
    with (beam)
    {
        if (offset != 0)
            beam_offset(offset, maindir)
    }
    i += 1
}
if (ibeam == 0 && wbeam == 0 && pbeam == 0 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeam)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamC)
}
if (ibeam == 0 && wbeam == 1 && pbeam == 0 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamW)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCW)
}
if (ibeam == 1 && wbeam == 0 && pbeam == 0 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamI)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCI)
}
if (ibeam == 0 && wbeam == 0 && pbeam == 1 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamP)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCP)
}
if (ibeam == 0 && wbeam == 0 && pbeam == 0 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamS)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCS)
}
if (ibeam == 0 && wbeam == 1 && pbeam == 0 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamSW)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCSW)
}
if (ibeam == 1 && wbeam == 0 && pbeam == 0 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamSI)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCSI)
}
if (ibeam == 0 && wbeam == 0 && pbeam == 1 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamSP)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCSP)
}
if (ibeam == 1 && wbeam == 1 && pbeam == 0 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamWI)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCWI)
}
if (ibeam == 0 && wbeam == 1 && pbeam == 1 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamWP)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCWP)
}
if (ibeam == 1 && wbeam == 0 && pbeam == 1 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamIP)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCIP)
}
if (ibeam == 1 && wbeam == 1 && pbeam == 0 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamSWI)
    if (argument3 == 1)
        PlaySoundMono(sndFireBeamCSWI)
}
if (ibeam == 0 && wbeam == 1 && pbeam == 1 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamSWP)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCSWP)
}
if (ibeam == 1 && wbeam == 0 && pbeam == 1 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamSIP)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCSIP)
}
if (ibeam == 1 && wbeam == 1 && pbeam == 1 && sbeam == 0)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamWIP)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCWIP)
}
if (ibeam == 1 && wbeam == 1 && pbeam == 1 && sbeam == 1)
{
    if (argument3 == 0)
        PlaySoundMono(sndFireBeamSWIP)
    if (argument3 >= 1)
        PlaySoundMono(sndFireBeamCSWIP)
}
