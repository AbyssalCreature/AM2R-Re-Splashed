if (state == 0)
{
    if (statetime == 0)
    {
        if (type == 5)
            statetime = 3
        image_index = 0
    }
    if (statetime > 2)
    {
        sprite_index = sBlockDestroy
        if (image_index < 3)
            image_index += 0.5
        else
        {
            state = 1
            visible = false
        }
    }
    statetime += 1
}
if (state == 2)
{
    if (image_index > 0)
        image_index -= 0.5
    else
    {
        image_index = 0
        if (collision_rectangle(x, y, (x + 16), (y + 16), oCharacter, 1, 1) > 0 || collision_rectangle(x, y, (x + 16), (y + 16), oEnemy, 1, 1) > 0 || ((oCharacter.state == 25 || oCharacter.state == 26) && collision_point((x + 24), (y + 24), oCharacter, 1, 1) > 0 && oCharacter.mirror == -1) || (collision_point((x - 8), (y + 24), oCharacter, 1, 1) > 0 && oCharacter.mirror == 1))
        {
            state = 0
            alarm[0] = regentime
        }
        else
            event_user(0)
    }
}
