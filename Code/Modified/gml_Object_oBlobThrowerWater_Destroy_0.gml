with (blobsolid)
    instance_destroy()
repeat (2)
{
    make_explosion1((x + irandom_range(-16, 16)), (y - 8))
    make_explosion1((x + irandom_range(-16, 16)), (y - 24))
    make_explosion1((x + irandom_range(-16, 16)), (y - 40))
    if (frozen > 0)
    {
        sfx_stop(deathsound)
        PlaySoundMono(sndIceShatter)
        instance_create((x + irandom_range(-16, 16)), (y - 48), oIceShard)
        instance_create((x + irandom_range(-16, 16)), (y - 32), oIceShard)
        instance_create((x + irandom_range(-16, 16)), (y - 40), oIceShard)
        instance_create((x + irandom_range(-16, 16)), (y - 16), oIceShard)
        instance_create((x + irandom_range(-16, 16)), (y - 24), oIceShard)
        instance_create((x + irandom_range(-16, 16)), (y - 8), oIceShard)
    }
}
