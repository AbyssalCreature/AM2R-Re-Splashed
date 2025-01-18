instance_destroy()
make_explosion1big(x, y)
expl = instance_create(x, y, oExplosionSmoke)
expl.width = 32
expl.height = 32
expl.expl_dir = 90
expl.expl_spd = 1
expl.explosions = 10
expl.smoke_steps = 1
repeat (8)
{
    rock = instance_create(x, (y - 8), oFXTrail)
    rock.sprite_index = sRockPieceA4
    rock.image_index = floor(random(6))
    rock.image_alpha = 1
    rock.fadespeed = 0.005
    rock.additive = 0
    rock.vspeed = (-2 - random(3))
    rock.hspeed = (-2 + random(4))
    rock.gravity = 0.2
    rock.gravity_direction = 270
    rock.depth = -150
}
