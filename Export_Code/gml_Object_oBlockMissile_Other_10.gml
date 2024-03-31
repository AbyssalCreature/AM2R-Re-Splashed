block = instance_create(x, y, oDestroyedBlock)
block.type = 2
block.regentime = regentime
block.alarm[0] = regentime
block.link_id = link_id
block.delay = delay
with (block)
    event_user(1)
sfx_stop(sndBlockDestroy)
sfx_play(sndBlockDestroy)
instance_destroy()
