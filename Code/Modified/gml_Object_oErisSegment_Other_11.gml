var deb, bubble;
if (state != 100)
{
    flashing = 10
    shaking = 8
    state = 2
    statetime = 0
    if instance_exists(oErisHead)
    {
        with (oErisHead)
            stun = 2
    }
    PlaySoundMono(sndIceShatter)
    repeat (8)
        deb = instance_create(x, (y - 8), oIceShard)
    repeat (8 + irandom(4))
    {
        bubble = instance_create(x, y, oLBubble)
        if instance_exists(bubble)
        {
            bubble.hspeed = random_range(-2.5, 2.5)
            bubble.vspeed = (-random(0.4))
        }
    }
    if (global.waterlevel != 0 && (y + 8) > (global.waterlevel + global.wateroffset))
    {
        repeat (8 + irandom(4))
        {
            bubble = instance_create(x, y, oLBubble)
            if instance_exists(bubble)
            {
                bubble.hspeed = random_range(-1.5, 1.5)
                bubble.vspeed = (-random(0.4))
            }
        }
    }
}
