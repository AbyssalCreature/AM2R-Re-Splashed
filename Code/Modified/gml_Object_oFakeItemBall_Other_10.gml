ballfade = instance_create(x, y, oFXTrail)
ballfade.sprite_index = sprite_index
ballfade.fadespeed = 0.1
ballfade.depth = 10
ballfx = instance_create(x, y, oFXTrail)
ballfx.sprite_index = sItemBallFX
ballfx.alpha = 3
ballfx.fadespeed = 0.1
ballfx.additive = 1
ballfx.depth = -10
instance_destroy()
