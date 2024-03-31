block = instance_create(x, y, oDestroyedBlock)
block.type = 1
block.regentime = -1
block.link_id = link_id
block.delay = delay
with (block)
    event_user(1)
block1 = collision_point((x + 2), (y - 2), oBlockBombChain, 0, 0)
block2 = collision_point((x + 18), (y + 2), oBlockBombChain, 0, 0)
block3 = collision_point((x + 2), (y + 18), oBlockBombChain, 0, 0)
block4 = collision_point((x - 2), (y + 2), oBlockBombChain, 0, 0)
if (block1 > oTestKeys)
{
    with (block1)
        alarm[10] = 4
}
if (block2 > oTestKeys)
{
    with (block2)
        alarm[10] = 4
}
if (block3 > oTestKeys)
{
    with (block3)
        alarm[10] = 4
}
if (block4 > oTestKeys)
{
    with (block4)
        alarm[10] = 4
}
sfx_stop(sndBlockDestroy)
sfx_play(sndBlockDestroy)
instance_destroy()
