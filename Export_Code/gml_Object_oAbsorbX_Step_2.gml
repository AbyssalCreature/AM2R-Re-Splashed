x = oCharacter.x
y = (oCharacter.y - (oCharacter.sprite_height / 2))
if (image_index > 17)
{
    oCharacter.xGlow = 0
    instance_destroy()
}
