if (state == 0)
{
    if (point_distance(x, y, oCharacter.x, oCharacter.y) < 32)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    if (statetime == 0)
    {
        sfx_play(sndBoss1Stomp)
        repeat (8)
        {
            rock = instance_create(x, (y - 8), oFXTrail)
            rock.sprite_index = sRockPieceA6
            rock.image_index = floor(random(5))
            rock.image_alpha = 1
            rock.fadespeed = 0.005
            rock.additive = 0
            rock.vspeed = (-2 - random(5))
            rock.hspeed = (-2 + random(4))
            rock.gravity = 0.2
            rock.gravity_direction = 270
            rock.depth = -150
        }
    }
    if (round(y) != targety)
        y = lerp(y, targety, 0.2)
    else
        event_user(0)
    if collision_line((x - 4), (y - 18), (x + 4), (y - 18), oSolid, true, true)
        event_user(0)
}
statetime += 1
