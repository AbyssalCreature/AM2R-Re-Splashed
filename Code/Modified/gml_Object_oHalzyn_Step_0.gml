if (frozen == 0)
{
    if (state == 0)
    {
        shield_angle = (5 + (sin(time) * 10))
        shield_offset = (sin((time + 2)) * -1.5)
        time += 0.15
        hspeed = lerp(hspeed, (0.5 * facing), 0.05)
        vspeed = 0
        if (collision_line((x + (facing * 25)), (y - 4), (x + (facing * 25)), (y + 4), oSolid, true, true) || (facing == 1 && x > limit_r) || (facing == -1 && x < limit_l))
            facing = (-facing)
        if collision_line((x + (facing * 30)), (y - 4), (x + (facing * 30)), (y + 4), oHalzynShield, true, true)
            facing = (-facing)
        if collision_line(x, y, x, (y + 120), oCharacter, true, true)
        {
            state = 1
            statetime = 0
            startx = x
            starty = y
            speed = 0
        }
    }
    if (state == 1)
    {
        if (statetime < 30)
        {
            shield_angle = lerp(shield_angle, -20, 0.2)
            shield_offset = lerp(shield_offset, 0, 0.1)
        }
        if (statetime >= 30 && statetime < 160)
        {
            direction = point_direction(x, y, oCharacter.x, (oCharacter.y - 16))
            speed = lerp(speed, 2.7, 0.04)
            if ((oCharacter.state == oCharacter.BALL && point_distance(x, y, oCharacter.x, (oCharacter.y - 16)) < 3) || (oCharacter.state != oCharacter.BALL && point_distance(x, y, oCharacter.x, (oCharacter.y - 16)) < 8))
            {
                state = 2
                statetime = -1
                speed = 0
            }
            if ((statetime > 60 && collision_line((x - 16), (y + 10), (x + 16), (y + 10), oSolid, true, true)) || collision_line((x + 20), (y - 8), (x + 20), (y + 8), oSolid, true, true) || collision_line((x - 20), (y - 8), (x - 20), (y + 8), oSolid, true, true))
            {
                state = 2
                statetime = -1
                speed = 0
            }
            shield_angle = lerp(shield_angle, 30, 0.2)
        }
        if (statetime >= 160)
            speed *= 0.95
        if (statetime >= 180)
        {
            state = 2
            statetime = -1
        }
    }
    if (state == 2)
    {
        direction = point_direction(x, y, startx, starty)
        speed = lerp(speed, 2, 0.1)
        shield_angle = lerp(shield_angle, 5, 0.1)
        if (point_distance(x, y, startx, starty) < 2)
        {
            state = 0
            statetime = -1
            time = 0
            vspeed = 0
            x = startx
            y = starty
        }
    }
}
else
    speed = 0
event_inherited()
if (state == 100)
{
    if (instance_exists(shield1) && instance_exists(shield2))
    {
        deb = instance_create(shield1.x, shield1.y, oDebris)
        deb.image_angle = shield1.image_angle
        deb.sprite_index = sHalzynShield
        deb.direction = (0 + random(30))
        deb.speed = (0.5 + random(3))
        deb.gravity = 0.1
        deb.playsound = 0
        deb = instance_create(shield2.x, shield2.y, oDebris)
        deb.image_angle = shield2.image_angle
        deb.sprite_index = sHalzynShield
        deb.image_xscale = -1
        deb.direction = (180 - random(30))
        deb.speed = (0.5 + random(3))
        deb.gravity = 0.1
        deb.playsound = 0
        with (shield1)
            instance_destroy()
        with (shield2)
            instance_destroy()
    }
    enemy_death()
}
