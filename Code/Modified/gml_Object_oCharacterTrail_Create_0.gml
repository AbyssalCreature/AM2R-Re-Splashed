image_alpha = 0.5
if (global.screwattack == 0)
    image_alpha = 0.3
alarm[0] = 1
fadeout = 0
mysurf = surface_create(64, 64)
if surface_exists(oCharacter.surf)
    surface_copy(mysurf, 0, 0, oCharacter.surf)
