bl_id = instance_position(x, (y + 8), oSolid)
if (bl_id < oTestKeys)
    bl_id = instance_position((x + 6), (y + 2), oSolid)
if (bl_id < oTestKeys)
    bl_id = instance_position((x - 6), (y + 2), oSolid)
if (bl_id > oTestKeys)
    return bl_id.material;
else
    return 0;
