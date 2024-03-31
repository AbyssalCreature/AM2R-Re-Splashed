canbeX = 0
makeActive()
setCollisionBounds(-20, -18, 20, 12)
image_speed = 0
state = 0
statetime = 0
hp = global.mod_monstersHealth
frozen = 0
if (global.difficulty == 0)
    freezetime = 240
if (global.difficulty == 1)
    freezetime = 150
if (global.difficulty > 1 || oControl.mod_monstersextreme == 1)
    freezetime = 120
flashing = 0
fxtimer = 0
dontfollow = 0
shell_frame = 0
fangs_frame = 0
fangs_frspd = 0.2
fangs_yoff = 0
fangs_x = x
fangs_y = y
body2_alpha = 0
spark_frame = 0
spark_alpha = 0
eyes_scale = 1
eyes_x = x
eyes_y = (y - 4)
iframe = 0
i = 0
j = 0
targetx = x
targety = y
scale = 0.5
col = 0
startx = x
starty = y
safex = x
safey = y
alarm[0] = 1
alarm[1] = 1
alarm[2] = 1
spark1 = -4
spark2 = -4
spark3 = -4
outside = 0
