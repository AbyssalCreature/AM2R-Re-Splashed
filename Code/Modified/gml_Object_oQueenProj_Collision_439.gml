if other.ibeam
{
    with (other.id)
        event_user(0)
    PlaySoundMono(sndFreezeHit)
    myhealth -= other.damage
    if (myhealth <= freezehp)
    {
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
    }
}
else
{
    with (other.id)
        event_user(1)
}
with (other.id)
{
    if (!pbeam)
        instance_destroy()
}
direction = other.direction
speed = 1
shaking = 30
if (state == 0)
    state = 1
