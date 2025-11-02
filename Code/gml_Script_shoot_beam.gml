if (chargebeam < 1)
    chargebeam = 0;

instance_create(x + aspr2x, y + aspr2y, oMflash);
beams = 1;

if (global.wbeam && !global.sbeam && chargebeam >= 1)
    beams = 2;

if (global.sbeam)
    beams = 3;

i = 0;

repeat (beams)
{
    beam = instance_create(x + aspr2x, y + aspr2y, oBeam);
    beam.ibeam = global.ibeam;
    beam.wbeam = global.wbeam;
    beam.pbeam = global.pbeam;
    beam.sbeam = global.sbeam;
    beam.beamid = i;
    beam.direction = argument0;
    beam.maindir = argument0;
    beam.speed = 6.4;
    beam.offset = 0;
    
    if (global.wbeam)
    {
        global.wbdir = !global.wbdir;
        beam.wbeamdir = global.wbdir;
        beam.speed = 9;
        beam.depth = -1000;
    }
    
    if (global.ibeam)
        beam.alarm[0] = 1 + random(5);
    
    if (global.pbeam)
        beam.alarm[1] = 1;
    
    if (chargebeam >= 1)
        beam.speed = 12;
    
    beam.image_angle = argument0;
    beam.fcolor = make_color_rgb(180, 180, 45);
    
    if (global.wbeam)
        beam.fcolor = make_color_rgb(240, 150, 210);
    
    if (global.pbeam)
        beam.fcolor = make_color_rgb(120, 250, 210);
    
    if (global.ibeam)
        beam.fcolor = make_color_rgb(75, 220, 255);
    
    beam.falpha = 0.4;
    beam.fxscale = 0.6;
    beam.fyscale = 0.6;
    
    if (global.sbeam)
        beam.fxscale = 0.8;
    
    if (chargebeam >= 1)
    {
        beam.fxscale = 1;
        beam.fyscale = 1;
    }
    
    nofire = 5;
    beam.damage = 5;
    beam.chargebeam = 0;
    
    if (global.wbeam)
    {
        beam.damage *= 1.5;
        nofire += 2;
    }
    
    if (global.ibeam)
    {
        beam.damage *= 1.5;
        nofire += 2;
    }
    
    if (global.sbeam)
    {
        beam.damage *= 0.8;
        nofire += 2;
    }
    
    if (global.pbeam)
    {
        beam.damage *= 1.2;
        nofire += 3;
    }
    
    if (chargebeam >= 1)
    {
        beam.damage *= 3;
        beam.chargebeam = 1;
        
        if (global.wbeam && !global.sbeam)
            beam.damage *= 0.6;
    }
    
    if (aimdirection == 1)
    {
        beam.x += 4;
        
        if (state != GRIP)
            beam.y -= 1;
    }
    
    if (aimdirection == 0)
        beam.x -= 4;
    
    if (aimdirection == 6)
    {
        beam.y += 4;
        
        if (facing == LEFT)
            beam.x += 1;
    }
    
    if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 0)
    {
        if (chargebeam == 0)
            beam.sprite_index = sBeam;
        
        if (chargebeam >= 1)
        {
            beam.sprite_index = sBeam2;
            beam.offset = 4;
        }
    }
    
    if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 0)
    {
        if (chargebeam == 0)
            beam.sprite_index = sWBeam;
        
        if (chargebeam >= 1)
            beam.sprite_index = sWBeam2;
        
        beam.offset = 10;
    }
    
    if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 0)
    {
        if (chargebeam == 0)
            beam.sprite_index = sIBeam;
        
        if (chargebeam >= 1)
        {
            beam.sprite_index = sIBeam2;
            beam.image_xscale = 1.4;
        }
    }
    
    if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 0)
    {
        if (chargebeam == 0)
            beam.sprite_index = sPBeam;
        
        if (chargebeam >= 1)
            beam.sprite_index = sPBeam2;
        
        beam.offset = 4;
    }
    
    if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 1)
    {
        if (chargebeam == 0)
        {
            beam.sprite_index = sSBeam;
            beam.offset = 5;
        }
        
        if (chargebeam >= 1)
        {
            beam.sprite_index = sSBeam2;
            beam.offset = 8;
        }
    }
    
    if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 1)
    {
        if (chargebeam == 0)
            beam.sprite_index = sSWBeam;
        
        if (chargebeam >= 1)
            beam.sprite_index = sSWBeam2;
        
        beam.offset = 5;
    }
    
    if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 1)
    {
        if (chargebeam == 0)
        {
            beam.sprite_index = sISBeam;
            beam.image_xscale = 0.6;
        }
        
        if (chargebeam >= 1)
        {
            beam.sprite_index = sISBeam;
            beam.image_xscale = 1.2;
        }
        
        beam.offset = 8;
    }
    
    if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 1)
    {
        if (chargebeam == 0)
            beam.sprite_index = sSPBeam;
        
        if (chargebeam >= 1)
            beam.sprite_index = sSPBeam2;
        
        beam.offset = 8;
    }
    
    if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 0)
    {
        if (chargebeam == 0)
            beam.sprite_index = sIWBeam;
        
        if (chargebeam >= 1)
            beam.sprite_index = sIWBeam2;
        
        beam.offset = 8;
    }
    
    if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 0)
    {
        if (chargebeam == 0)
            beam.sprite_index = sPWBeam;
        
        if (chargebeam >= 1)
            beam.sprite_index = sPWBeam2;
        
        beam.offset = 8;
    }
    
    if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 0)
    {
        if (chargebeam == 0)
        {
            beam.sprite_index = sIPBeam;
            beam.image_xscale = 0.6;
            beam.image_yscale = 0.6;
        }
        
        if (chargebeam >= 1)
            beam.sprite_index = sIPBeam;
        
        beam.offset = 8;
    }
    
    if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 1)
    {
        if (chargebeam == 0)
            beam.sprite_index = sISWBeam;
        
        if (chargebeam >= 1)
            beam.sprite_index = sISWBeam2;
        
        beam.offset = 8;
    }
    
    if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 1)
    {
        if (chargebeam == 0)
            beam.sprite_index = sSPWBeam;
        
        if (chargebeam >= 1)
            beam.sprite_index = sSPWBeam2;
        
        beam.offset = 8;
    }
    
    if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 1)
    {
        if (chargebeam == 0)
            beam.sprite_index = sISPBeam;
        
        if (chargebeam >= 1)
            beam.sprite_index = sISPBeam2;
        
        beam.offset = 8;
    }
    
    if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 0)
    {
        if (chargebeam == 0)
        {
            beam.sprite_index = sIPBeam;
            beam.image_xscale = 0.6;
            beam.image_yscale = 0.6;
        }
        
        if (chargebeam >= 1)
            beam.sprite_index = sIPBeam;
        
        beam.offset = 8;
    }
    
    if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 1)
    {
        if (chargebeam == 0)
            beam.sprite_index = sISWPBeam;
        
        if (chargebeam >= 1)
            beam.sprite_index = sISWPBeam2;
        
        beam.offset = 8;
    }
    
    with (beam)
    {
        if (offset != 0)
            beam_offset(offset, maindir);
    }
    
    i += 1;
}

if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 0)
{
    if (chargebeam == 0)
        PlaySoundMono(96);
    
    if (chargebeam >= 1)
        PlaySoundMono(97);
}

if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 0)
{
    if (chargebeam == 0)
        PlaySoundMono(100);
    
    if (chargebeam >= 1)
        PlaySoundMono(101);
}

if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 0)
{
    if (chargebeam == 0)
        PlaySoundMono(98);
    
    if (chargebeam >= 1)
        PlaySoundMono(99);
}

if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 0)
{
    if (chargebeam == 0)
        PlaySoundMono(104);
    
    if (chargebeam >= 1)
        PlaySoundMono(105);
}

if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 1)
{
    if (chargebeam == 0)
        PlaySoundMono(102);
    
    if (chargebeam >= 1)
        PlaySoundMono(103);
}

if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 1)
{
    if (chargebeam == 0)
        PlaySoundMono(108);
    
    if (chargebeam >= 1)
        PlaySoundMono(109);
}

if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 0 && global.sbeam == 1)
{
    if (chargebeam == 0)
        PlaySoundMono(106);
    
    if (chargebeam >= 1)
        PlaySoundMono(107);
}

if (global.ibeam == 0 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 1)
{
    if (chargebeam == 0)
        PlaySoundMono(116);
    
    if (chargebeam >= 1)
        PlaySoundMono(117);
}

if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 0)
{
    if (chargebeam == 0)
        PlaySoundMono(120);
    
    if (chargebeam >= 1)
        PlaySoundMono(121);
}

if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 0)
{
    if (chargebeam == 0)
        PlaySoundMono(112);
    
    if (chargebeam >= 1)
        PlaySoundMono(113);
}

if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 0)
{
    if (chargebeam == 0)
        PlaySoundMono(110);
    
    if (chargebeam >= 1)
        PlaySoundMono(111);
}

if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 0 && global.sbeam == 1)
{
    if (chargebeam == 0)
        PlaySoundMono(124);
    
    if (chargebeam == 1)
        PlaySoundMono(125);
}

if (global.ibeam == 0 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 1)
{
    if (chargebeam == 0)
        PlaySoundMono(118);
    
    if (chargebeam >= 1)
        PlaySoundMono(119);
}

if (global.ibeam == 1 && global.wbeam == 0 && global.pbeam == 1 && global.sbeam == 1)
{
    if (chargebeam == 0)
        PlaySoundMono(114);
    
    if (chargebeam >= 1)
        PlaySoundMono(115);
}

if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 0)
{
    if (chargebeam == 0)
        PlaySoundMono(122);
    
    if (chargebeam >= 1)
        PlaySoundMono(123);
}

if (global.ibeam == 1 && global.wbeam == 1 && global.pbeam == 1 && global.sbeam == 1)
{
    if (chargebeam == 0)
        PlaySoundMono(126);
    
    if (chargebeam >= 1)
        PlaySoundMono(127);
}
