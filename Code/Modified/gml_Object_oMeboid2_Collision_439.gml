if other.ibeam
{
    with (other.id)
        event_user(0)
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
    frz.xSprite = sprite_index
    frz.xLastFrame = image_index
    frz.xLastFacing = image_xscale
    frz.xLastAngle = image_angle
    frz.xLastDepth = depth
    frz.xLastXPos = xstart
    frz.xLastYPos = ystart
    frz.xLastEnemy = object_index
    frz.canbeX = canbeX
    frz.timer = timer
    frz.rotspeed = rotspeed
    frz.myspeed = myspeed
    frz.offset = offset
    frz.moveratio = moveratio
    frz.movesteps = movesteps
    PlaySoundMono(sndFreezeHit)
    instance_destroy()
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
speed = 2
shaking = 30
