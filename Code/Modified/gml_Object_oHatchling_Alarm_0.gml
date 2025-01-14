if (myid == 0)
{
    if (sprite_index != sFedtogg)
        sfx_play(choose(162, 380, 381, 382))
    if (sprite_index == sFedtogg)
        sfx_play(choose(354, 355, 356))
    alarm[0] = (300 + irandom(320))
    roaring = 60
}
