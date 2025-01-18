startx = x
starty = y
alarm[0] = (10 + random(500))
image_speed = 0
image_index = 0
while (collision_point(x, (y - 1), oSolid, 1, 1) == -4)
    y -= 16
