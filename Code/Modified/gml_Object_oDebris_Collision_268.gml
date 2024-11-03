if canbounce
{
    move_bounce_all(0)
    speed *= 0.5
    if (speed > 0.5)
        rotspeed *= -1
    if playsound
    {
        if (speed > 1 && random(1) < 0.5)
        {
            snd = floor(random(3))
            switch snd
            {
                case 0:
                    PlaySoundVisible(sndDebris1, x, y)
                    break
                case 1:
                    PlaySoundVisible(sndDebris2, x, y)
                    break
                case 2:
                    PlaySoundVisible(sndDebris3, x, y)
                    break
            }

        }
    }
}
