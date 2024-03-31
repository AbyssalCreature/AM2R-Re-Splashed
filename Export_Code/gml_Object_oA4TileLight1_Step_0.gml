i += 0.02
if (i > 99999999)
    i = 0
j = (0.05 + abs(sin(i)))
if (j > 1)
    j = 1
image_alpha = j
if (global.event[200] == 0)
    visible = false
else
    visible = true
image_index = color
