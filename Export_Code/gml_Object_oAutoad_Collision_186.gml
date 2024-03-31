event_inherited()
emp.collisionBoundsOffsetBottomY = 4
deb = instance_create((x - 12), y, oDebris)
deb.sprite_index = sAutoadClawDisabled
deb.depth = -4
deb = instance_create((x + 12), y, oDebris)
deb.sprite_index = sAutoadClawDisabled
deb.depth = -4
deb.image_xscale = -1
