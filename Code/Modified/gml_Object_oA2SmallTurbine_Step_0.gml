var dist, dist2, spd;
if (stun > 0)
    stun -= 1
if (flashing > 0)
    flashing -= 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if ((global.event[101] + 1) == eventno)
    canbehit = 1
else
    canbehit = 0
if (global.currentsuit != 2)
{
    if (oCharacter.y > (y - 48) && oCharacter.y < (y + 16))
    {
        if (oCharacter.x < (x + 12))
        {
            if (oCharacter.x > (x - 96))
            {
                with (oCharacter)
                {
                    if (isCollisionRight(2) == 0)
                        x += 0.2
                }
            }
            if (oCharacter.x > (x - 80))
            {
                with (oCharacter)
                {
                    if (isCollisionRight(2) == 0 && state != 15)
                        x += 0.1
                }
            }
            if (oCharacter.x > (x - 64))
            {
                with (oCharacter)
                {
                    if (isCollisionRight(2) == 0 && state != 15)
                        x += 0.1
                }
            }
            if (oCharacter.x > (x - 48))
            {
                with (oCharacter)
                {
                    if (isCollisionRight(2) == 0 && state != 15)
                        x += 0.1
                }
            }
            if (oCharacter.x > (x - 32))
            {
                with (oCharacter)
                {
                    if (isCollisionRight(2) == 0 && state != 15)
                        x += 0.1
                }
            }
            if (oCharacter.x > (x - 16))
            {
                with (oCharacter)
                {
                    if (isCollisionRight(2) == 0 && state != 15)
                        x += 0.1
                }
            }
        }
        if (oCharacter.x > (x + 18))
        {
            if (oCharacter.x < ((x + 96) + 16))
            {
                with (oCharacter)
                {
                    if (isCollisionLeft(2) == 0)
                        x -= 0.2
                }
            }
            if (oCharacter.x < ((x + 80) + 16))
            {
                with (oCharacter)
                {
                    if (isCollisionLeft(2) == 0 && state != 15)
                        x -= 0.1
                }
            }
            if (oCharacter.x < ((x + 64) + 16))
            {
                with (oCharacter)
                {
                    if (isCollisionLeft(2) == 0 && state != 15)
                        x -= 0.1
                }
            }
            if (oCharacter.x < ((x + 48) + 16))
            {
                with (oCharacter)
                {
                    if (isCollisionLeft(2) == 0 && state != 15)
                        x -= 0.1
                }
            }
            if (oCharacter.x < ((x + 32) + 16))
            {
                with (oCharacter)
                {
                    if (isCollisionLeft(2) == 0 && state != 15)
                        x -= 0.1
                }
            }
            if (oCharacter.x < ((x + 16) + 16))
            {
                with (oCharacter)
                {
                    if (isCollisionLeft(2) == 0 && state != 15)
                        x -= 0.1
                }
            }
        }
    }
}
if (instance_exists(oBomb) && distance_to_object(oBomb) <= 80 && oBomb.y >= global.waterlevel)
{
    with (oBomb)
    {
        dist = distance_to_point((oA2SmallTurbine.x + 16), (oA2SmallTurbine.y - 2))
        dist2 = distance_to_point((oA2SmallTurbine.x + 16), (oA2SmallTurbine.y + 16))
        if (dist <= 80 && dist > 12)
        {
            spd = clamp((180 / dist), 0.1, 2.5)
            x += lengthdir_x(spd, point_direction(x, y, (oA2SmallTurbine.x + 16), (oA2SmallTurbine.y - 2)))
            y += lengthdir_y(spd, point_direction(x, y, (oA2SmallTurbine.x + 16), (oA2SmallTurbine.y - 2)))
        }
        else if (dist <= 12)
        {
            spd = clamp((180 / dist2), 0.1, 2.5)
            x += lengthdir_x(spd, point_direction(x, y, (oA2SmallTurbine.x + 16), (oA2SmallTurbine.y + 16)))
            y += lengthdir_y(spd, point_direction(x, y, (oA2SmallTurbine.x + 16), (oA2SmallTurbine.y + 16)))
        }
        if (dist2 <= 0)
            event_user(0)
    }
}
