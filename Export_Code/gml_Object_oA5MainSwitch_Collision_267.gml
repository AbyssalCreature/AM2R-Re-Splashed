if (other.state == 23 && other.xVel == 0 && state == 0)
{
    with (other.id)
    {
        state = 60
        statetime = 0
    }
    state = 1
    sfx_play(sndMorphBallSlot)
    sfx_play(sndAutoadActivate)
}
