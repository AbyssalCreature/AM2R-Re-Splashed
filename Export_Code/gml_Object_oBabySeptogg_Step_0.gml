var particle, playerdirection;
timer_x++
if (timer_x > ((2 * pi) / frequency_x))
    timer_x -= ((2 * pi) / frequency_x)
timer_y++
if (timer_y > ((2 * pi) / frequency_y))
    timer_y -= ((2 * pi) / frequency_y)
xx = (sin((timer_x * frequency_x)) * amplitude_x)
yy = (sin((timer_y * frequency_y)) * amplitude_y)
if (parent != self)
{
    eye_glow = 1
    amplitude_y = lerp(amplitude_y, (orbit_amplitude / (1 + (1 * parent.grounded))), 0.01)
    ytarget = lerp(ytarget, (parent.y - (55 * parent.grounded)), 0.01)
    x = (parent.xstart + xx)
    y = (((ystart + yy) - (parent.ystart - ytarget)) + 7)
    if ((x - xprevious) > 0)
        depth = (parent.depth - orbit)
    else
        depth = (parent.depth + orbit)
}
else if (scavenge != -1)
{
    eye_glow = 1
    if ((point_distance(x, y, oCharacter.x, (oCharacter.y - 24)) < 64 && oCharacter.state != oCharacter.STANDING) || (instance_exists(oBeam) && point_distance(x, y, oBeam.x, oBeam.y) < 64) || (instance_exists(oMissile) && point_distance(x, y, oMissile.x, oMissile.y) < 64) || (instance_exists(oPBombExpl) && collision_circle(x, y, 16, oPBombExpl, 1, 0)))
    {
        if (flyoff == 0)
        {
            flyoff = 1
            depth = -150
            direction = (point_direction(x, y, oCharacter.x, (oCharacter.y - 24)) + irandom_range(-80, 80))
            speed = exit_speed_start
            xx = 0
            yy = 0
            amplitude_x = 0
            amplitude_y = 0
            frequency_x = exit_frequency_x
            frequency_y = exit_frequency_y
            play_septogg_sound()
        }
    }
    if (!flyoff)
    {
        x = (xstart + xx)
        y = (ystart + yy)
    }
}
else
{
    if (state == 0)
    {
        if ((y + 24) > oCharacter.y && point_distance(x, y, oCharacter.x, oCharacter.y) < 56)
        {
            state = 1
            statetime = 0
        }
    }
    if (state == 1)
    {
        if (statetime == 0)
        {
            play_septogg_sound()
            image_speed = 0.33
            direction = irandom(359)
            frequency_x = exit_frequency_x
            frequency_y = exit_frequency_y
            particle = septogg_particle_sprite()
            if (particle != -1)
            {
                repeat (8)
                {
                    rock = instance_create(x, (y - 8), oFXTrail)
                    rock.sprite_index = particle
                    rock.image_index = floor(random(5))
                    rock.image_alpha = 1
                    rock.fadespeed = 0.005
                    rock.additive = 0
                    rock.vspeed = (-1.5 - random(3.75))
                    rock.hspeed = (-1.5 + random(3))
                    if (particle != sBubblesPiece1 && particle != 1581)
                        rock.gravity = 0.2
                    else
                    {
                        rock.vspeed /= 2
                        rock.hspeed /= 2
                    }
                    rock.gravity_direction = 270
                    rock.depth = -155
                    rock.image_xscale = 0.5
                    rock.image_yscale = 0.5
                }
            }
        }
        if (statetime == 4)
        {
            depth = -155
            eye_glow = 1
        }
        if (round(y) != target_pop && flyoff == 0)
            y = lerp(y, target_pop, 0.125)
        else
            flyoff = 1
    }
    statetime += 1
}
if flyoff
{
    speed += exit_acceleration
    if (speed > exit_speed)
        speed = exit_speed
    amplitude_x = lerp(amplitude_x, exit_amplitude_x, exit_amplitude_lerp)
    amplitude_y = lerp(amplitude_y, exit_amplitude_y, exit_amplitude_lerp)
    if (speed > 0)
    {
        if (point_distance(x, y, oCharacter.x, (oCharacter.y - 24)) < 160)
        {
            playerdirection = point_direction(oCharacter.x, (oCharacter.y - 24), x, y)
            turn_towards_direction(playerdirection, turnspeed)
        }
    }
    x += xx
    y += yy
}
