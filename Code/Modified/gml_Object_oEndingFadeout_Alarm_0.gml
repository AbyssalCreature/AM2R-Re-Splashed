alarm[0] = fadeSpeed
if (fade == 1)
    fadeAlpha += 0.03
if (fadeAlpha >= 1)
{
    fade = 0
    timer += 1
}
