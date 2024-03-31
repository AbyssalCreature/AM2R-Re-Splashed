if (open == 1)
{
    block = instance_create((x - 8), y, oSolid1)
    block.image_yscale = 4
    sfx_play_single(227)
    open = 0
    lockdelay = 2
    showlock = 0
}
