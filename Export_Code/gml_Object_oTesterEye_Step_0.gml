targetx = oCharacter.x
targety = oCharacter.y
centerx = lengthdir_x(4, point_direction(x, y, targetx, targety))
centery = lengthdir_y(4, point_direction(x, y, targetx, targety))
shinefx = (!shinefx)
if (flashing > 0)
    flashing -= 1
