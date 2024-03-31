instance_create(round(x), round(y), oBombExpl)
PlaySoundMono(sndBombExpl)
light = instance_create(x, y, oFadeLight32)
light.fadespeed = 0.1
light.alarm[0] = 10
if (y > (global.waterlevel + global.wateroffset) && global.waterlevel != 0)
{
    repeat (4 + floor(random(4)))
    {
        bubble = instance_create(x, y, oLBubble)
        if instance_exists(bubble)
        {
            bubble.hspeed = (2 - random(4))
            bubble.vspeed = (-0.1 - random(1))
        }
    }
}
instance_destroy()
