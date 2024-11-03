scale += 0.1
scale *= 1.07
offset *= 1.15
image_xscale = scale
image_yscale = scale
x += offset
y += (offset * 0.2)
statetime += 1
if (statetime > 60)
    instance_destroy()
