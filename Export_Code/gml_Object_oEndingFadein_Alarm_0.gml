alarm[0] = fadeSpeed
fadeAlpha -= 0.03
if (fadeAlpha <= 0)
    instance_destroy()
