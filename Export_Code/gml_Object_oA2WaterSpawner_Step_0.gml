x = oCharacter.x
y = (oCharacter.y - 8)
if (oCharacter.state != 50)
    instance_destroy()
if (oCharacter.xVel > 0)
    image_angle = 270
else
    image_angle = 0
