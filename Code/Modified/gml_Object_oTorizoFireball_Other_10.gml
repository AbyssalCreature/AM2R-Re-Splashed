expl = instance_create(x, y, oFXAnimSpark)
expl.image_speed = 0.5
expl.additive = 0
expl.sprite_index = sTorizoProjExpl
PlaySoundMono(sndProjHit2)
instance_destroy()
