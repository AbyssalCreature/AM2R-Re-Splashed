yoff[0] = sin(timer)
yoff[1] = (sin((timer - 1)) * 2)
yoff[2] = (sin((timer - 2)) * 2.1)
yoff[3] = (sin((timer - 3)) * 2.2)
yoff[4] = (sin((timer - 4)) * 2.3)
yoff[5] = (sin((timer - 5)) * 2.4)
timer += 0.1
if (timer > 9999999)
    timer = 0
