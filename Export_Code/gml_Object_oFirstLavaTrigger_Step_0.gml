if ((global.quake && active == 1) || (!instance_exists(oBigQuake)))
{
    mover = instance_create(0, 0, oMoveWater)
    mover.delay = 4
    mover.targety = 800
    instance_destroy()
}
