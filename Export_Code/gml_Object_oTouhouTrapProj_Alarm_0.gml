moving = 1
if instance_exists(oCharacter)
    projdir = point_direction(x, y, oCharacter.x, oCharacter.y)
projspeed = 3
windupx = (x + lengthdir_x(32, (projdir + 180)))
windupy = (y + lengthdir_y(32, (projdir + 180)))
initialx = x
initialy = y
sfx_play(sndA4DoorOpen)
