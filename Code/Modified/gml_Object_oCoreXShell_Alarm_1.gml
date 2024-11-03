if (canSpawnX && state != 0)
{
    inst = spawn_rnd_pickup_at(x, y, 100)
    if instance_exists(inst)
    {
        inst.state = 2
        inst.statetime = 0
        inst.depth = -151
        canSpawnX = 0
        alarm[2] = 75
        alarm[3] = 60
    }
}
