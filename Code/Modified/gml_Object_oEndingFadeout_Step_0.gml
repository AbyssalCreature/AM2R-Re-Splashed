if (timer >= 100)
{
    room_goto(titleroom)
    mus_stop(musEnding)
}
if (timer > 10 && timer < 20 && unlockalpha < 1)
    unlockalpha += 0.02
if (timer > 70 && unlockalpha > 0)
    unlockalpha -= 0.02
