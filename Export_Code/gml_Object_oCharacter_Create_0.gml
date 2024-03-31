characterCreateEvent()
mAnimSpd = 0
activation_code = 0
lastSpriteIndex = sprite_index
spectatorSwapTimer = 0
coreIdle = 0
frequency_x = (0.1 + random_range(-0.05, 0.05))
amplitude_x = (0.5 + random_range(-0.1, 0.1))
timer_x = irandom(100)
frequency_y = (0.1 + random_range(-0.05, 0.05))
amplitude_y = (0.5 + random_range(-0.1, 0.1))
timer_y = irandom(100)
xx = 0
yy = 0
absorbTime = 0
mosaicTime = 0
reformTime = 0
xscale = 1
yscale = 1
sizeX = 1
sizeY = 1
if (room == rm_a8h02)
    oMusicV2.currentbgm = 294
