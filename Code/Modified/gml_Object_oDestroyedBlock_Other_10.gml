if (type == 0)
    block = instance_create(x, y, oBlockShoot)
if (type == 1)
    block = instance_create(x, y, oBlockBomb)
if (type == 2)
    block = instance_create(x, y, oBlockMissile)
if (type == 3)
    block = instance_create(x, y, oBlockSMissile)
if (type == 4)
    block = instance_create(x, y, oBlockSpeed)
if (type == 5)
    block = instance_create(x, y, oBlockStep)
if (type == 6)
    block = instance_create(x, y, oBlockPBomb)
if (type == 7)
    block = instance_create(x, y, oBlockScrew)
block.regentime = regentime
block.active = 0
block.material = 0
block.delay = delay
block.link_id = link_id
block.visible = true
instance_destroy()
