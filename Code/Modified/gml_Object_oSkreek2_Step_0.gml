var bubble, proj;
action_inherited()
enemy_target_check(128, 1)
if (trigger != 0 && launch == 0)
    target = 0
else if (launch == trigger)
    enemy_target_check(128, 1)
else if (trigger != 0)
    target = 0
if (stun == 0 && frozen == 0)
{
    if (state == 0)
    {
        canbehit = 0
        hitscrewattack = 0
        if (irandom(50) == 1)
        {
            bubble = instance_create(x, y, oLBubble)
            if instance_exists(bubble)
            {
                bubble.hspeed = random_range(-1, 1)
                bubble.vspeed = (-random(0.4))
            }
        }
    }
    if (target == 1 && state == 0 && cooldown <= 0)
    {
        canbehit = 1
        hitscrewattack = 1
        if (x >= oCharacter.x)
        {
            facing = -1
            image_angle = 270
        }
        if (x < oCharacter.x)
        {
            facing = 1
            image_angle = 90
        }
        vspeed = -6
        state = 1
    }
    if (state == 1)
    {
        vspeed += 0.12
        if (vspeed >= -2.8 && floor(image_angle) != abs((180 * (sign(facing) - 1))))
        {
            image_angle -= (sign(facing) * 5)
            if (spit == 0)
            {
                sprite_index = sSkreekA6_spit
                frozenspr = 1696
                image_index = 0
                spit = 1
            }
        }
        if (spit >= 1 && vspeed >= 0.6 && spit < 27)
        {
            spit++
            if ((spit % 13) == 0 && image_index > 2)
            {
                proj = instance_create(x, y, oSkreekSpit)
                proj.speed = 3
                proj.direction = (90 * abs((sign(facing) - 1)))
                proj.image_angle = proj.direction
            }
        }
    }
    if (y > ystart && state != 0)
    {
        sprite_index = sSkreekA6
        frozenspr = 1695
        image_speed = 0.2
        vspeed = 0
        y = ystart
        cooldown = 60
        state = 0
        spit = 0
    }
}
else
    speed = 0
if (cooldown > 0)
    cooldown--
if (state == 100)
    enemy_death()
