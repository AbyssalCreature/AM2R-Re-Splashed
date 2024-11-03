alarm[1] = (60 + random(120))
if (frozen == 0)
{
    if (state == 3)
        state = 4
    if (state == 1 && target == 1 && global.difficulty == 2)
        state = 3
}
