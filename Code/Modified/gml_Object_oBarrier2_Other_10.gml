with (wall)
    instance_destroy()
PlaySoundMono(sndIceShatter)
repeat (8)
{
    instance_create((x + random_range(-16, 16)), (y + 8), oIceShard)
    instance_create((x + random_range(-16, 16)), (y + 16), oIceShard)
    instance_create((x + random_range(-16, 16)), (y + 24), oIceShard)
    instance_create((x + random_range(-16, 16)), (y + 32), oIceShard)
    instance_create((x + random_range(-16, 16)), (y + 40), oIceShard)
    instance_create((x + random_range(-16, 16)), (y + 48), oIceShard)
}
instance_destroy()
