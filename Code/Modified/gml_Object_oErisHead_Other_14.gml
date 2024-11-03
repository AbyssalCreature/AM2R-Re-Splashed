var proj;
roaring = 15
sfx_play(sndErisRoar4)
proj = instance_create(x, y, oErisProjectile)
proj.direction = point_direction(x, y, oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)))
