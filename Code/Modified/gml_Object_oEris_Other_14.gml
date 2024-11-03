var proj, proj2;
if (!boosting)
{
    if (boostphase < 3)
    {
        proj = instance_create(x, y, oErisProjectile)
        proj.direction = point_direction(x, y, oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)))
    }
    else if (boostphase < 5)
    {
        proj = instance_create(x, y, oErisProjectile)
        proj.direction = point_direction(x, y, oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)))
        proj.direction += 3
        proj2 = instance_create(x, y, oErisProjectile)
        proj2.direction = point_direction(x, y, oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)))
        proj2.direction -= 3
    }
    else
    {
        for (i = -1; i < 2; i++)
        {
            proj = instance_create(x, y, oErisProjectile)
            proj.direction = point_direction(x, y, oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)))
            proj.direction += (i * 15)
        }
    }
}
