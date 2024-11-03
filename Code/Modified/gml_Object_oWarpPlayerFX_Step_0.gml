if (mode == 1)
{
    if (point_distance(x, y, oCharacter.x, oCharacter.y) < 10)
    {
        screen_shake(6, 1)
        sfx_play(sndA5WarpEnd)
        instance_destroy()
    }
}
