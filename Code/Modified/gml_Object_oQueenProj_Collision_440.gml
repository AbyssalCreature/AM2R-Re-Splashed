if (global.icemissiles && (!other.smissile))
{
    PlaySoundMono(sndFreezeHit)
    frz = instance_create(x, y, oEnemyFrozen)
    frz.image_xscale = facing
    frz.sprite_index = frozenspr
    frz.image_index = image_index
    frz.mask_index = frozenspr
    frz.image_angle = image_angle
    frz.xVel = hspeed
    frz.yVel = vspeed
    frz.depth = 10
    frz.falling = freezefall
    frz.canbeX = 0
    instance_destroy()
    with (other.id)
        event_user(0)
    exit
}
event_inherited()
shaking = 30
direction = other.direction
speed = 2
if (state == 0)
    state = 1
