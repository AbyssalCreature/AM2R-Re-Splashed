if ((direction == 0 || direction == 359.5 || direction == 45 || direction == 315) && oCharacter.xVel > 0)
    x += oCharacter.xVel
if ((direction == 180 || direction == 135 || direction == 225) && oCharacter.xVel < 0)
    x += oCharacter.xVel
if (direction == 270 && oCharacter.yVel > 0)
    y += oCharacter.yVel
if (image_alpha > 0)
    image_alpha -= fadespeed
else
    instance_destroy()
