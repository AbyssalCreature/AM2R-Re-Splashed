i += 0.02
if (i > 99999999)
    i = 0
light_alpha = (0.05 + abs(sin(i)))
if (light_alpha > 1)
    light_alpha = 1
