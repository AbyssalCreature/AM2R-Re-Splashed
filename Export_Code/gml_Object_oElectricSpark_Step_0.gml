x = oCharacter.x
y = (oCharacter.y - 16)
if (image_alpha > 0)
    image_alpha -= 0.05
else
    instance_destroy()
