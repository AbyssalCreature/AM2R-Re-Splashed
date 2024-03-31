if collision_point(x, y, oDoor, 0, 1)
    exit
if (state == 2 && dontfollow == 0 && oCharacter.monster_drain == 0)
{
    if (room != rm_a7b05 || oCharacter.x > 144 || oCharacter.y > 80)
    {
        state = 3
        statetime = 0
        with (oCharacter)
            monster_drain = 1
    }
}
