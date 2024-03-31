mus_alpha_monster()
tr1 = instance_create(((x - 160) - round((2 * (oControl.widescreen_space / 3)))), (y + 64), oMAlphaTriggerA3AL)
tr1.facing = 1
tr1.myid = 23
tr1.hspeed = 5
tr2 = instance_create(((x + 160) + round((2 * (oControl.widescreen_space / 3)))), (y + 64), oMAlphaTriggerA3AL)
tr2.facing = -1
tr2.image_xscale = -1
tr2.myid = 24
tr2.hspeed = -8
global.monstersarea += 2
global.event[171] = 1
instance_destroy()
