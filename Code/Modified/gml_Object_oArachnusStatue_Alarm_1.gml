if instance_exists(110423)
{
    with (110423)
        instance_destroy()
}
if instance_exists(110422)
{
    with (110422)
        instance_destroy()
}
if instance_exists(110424)
{
    with (110424)
        instance_destroy()
}
instance_create(x, (y - 20), oArachnusIntro)
image_index = 2
state = 2
piece = instance_create((x - 8), (y - 24), oArachnusStatuePiece)
piece.hspeed = -0.5
piece.vspeed = -2.5
piece.rotspeed = 20
piece.sprite_index = sArachnusStatuePiece1
piece = instance_create((x + 8), (y - 24), oArachnusStatuePiece)
piece.hspeed = 1.2
piece.vspeed = -1.5
piece.rotspeed = -15
piece.sprite_index = sArachnusStatuePiece2
piece = instance_create((x + 8), (y - 24), oArachnusStatuePiece)
piece.hspeed = 3
piece.vspeed = -1
piece.rotspeed = -12
piece.sprite_index = sArachnusStatuePiece3
piece = instance_create((x + 8), (y - 24), oArachnusStatuePiece)
piece.hspeed = 1.5
piece.vspeed = -2
piece.rotspeed = 7
piece.sprite_index = sArachnusStatuePiece4
piece = instance_create((x + 8), (y - 24), oArachnusStatuePiece)
piece.hspeed = -0.5
piece.vspeed = -1.1
piece.rotspeed = -4
piece.sprite_index = sArachnusStatuePiece4
repeat (10)
{
    smk = instance_create(((x - 16) + random(32)), ((y - 8) - random(32)), oFXAnimSpark)
    smk.image_speed = (0.2 + random(0.5))
    smk.additive = 0
    smk.sprite_index = sSmoke1
    smk.image_alpha = 0.6
}
sfx_stop(sndQuakeLoop)
sfx_play(sndBoss1Stomp)
