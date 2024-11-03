if (active == 0)
{
    vspeed = -7
    hspeed = -4
    friction = 0.3
    active = 1
    global.event[108] = 1
    tile_layer_delete(-105)
    sfx_play(sndBoss1Stomp)
    repeat (8)
    {
        mytrail = instance_create((440 + random(32)), (176 + random(32)), oFXTrail)
        mytrail.sprite_index = sRockPieceA2
        mytrail.image_index = floor(random(6))
        mytrail.image_alpha = 1
        mytrail.fadespeed = 0.005
        mytrail.additive = 0
        mytrail.vspeed = (-3 - random(5))
        mytrail.hspeed = (-3 + random(4))
        mytrail.gravity = 0.2
        mytrail.gravity_direction = 270
        mytrail.depth = -150
    }
    mus_alpha_monster()
}
