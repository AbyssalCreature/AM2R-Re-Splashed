scale += 0.01
scale *= 1.04
image_xscale = scale
image_yscale = scale
statetime += 1
if (statetime > 10)
    hspeed -= 0.2
if (statetime > 30)
    speed *= 1.1
if (statetime > 120)
    instance_destroy()
