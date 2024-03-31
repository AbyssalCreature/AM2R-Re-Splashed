if hitemp
{
    emp = instance_create(x, y, oEnemyDisabled)
    emp.image_xscale = facing
    emp.sprite_index = empspr
    emp.image_index = image_index
    emp.mask_index = empspr
    if (platform_engine_active == 1)
    {
        emp.xVel = (xVel / 2)
        emp.yVel = (yVel / 2)
        emp.collisionBoundsOffsetLeftX = (collisionBoundsOffsetLeftX - 2)
        emp.collisionBoundsOffsetTopY = (collisionBoundsOffsetTopY - 2)
        emp.collisionBoundsOffsetRightX = (collisionBoundsOffsetRightX - 2)
        emp.collisionBoundsOffsetBottomY = (collisionBoundsOffsetBottomY - 2)
    }
    else
    {
        emp.xVel = (hspeed / 2)
        emp.yVel = (vspeed / 2)
    }
    emp.depth = 10
    expl = instance_create(x, y, oFXAnimSpark)
    expl.image_speed = 0.5
    expl.additive = 0
    expl.depth = -10
    expl.sprite_index = sGunzooShotExpl
    repeat (6)
        instance_create(x, y, oDebris)
    repeat (10)
    {
        spark = instance_create(x, y, oSparkParticle)
        spark.mycolor = 16777215
        spark.speed = random_range(3, 7)
    }
    sfx_play(sndEMPHit)
    instance_destroy()
}
