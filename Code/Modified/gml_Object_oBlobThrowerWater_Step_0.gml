event_inherited()
enemy_active_check(40)
enemy_target_check(90, 1)
if (active == 1 && frozen == 0)
{
    if (state == 0)
    {
        image_index += 0.1
        if (target && statetime > 150)
        {
            state = 1
            statetime = 0
            image_index = 0
            sprite_index = sBlobThrowerWater
            frozenspr = 1491
        }
    }
    if (state == 1)
    {
        if (image_index < 6)
            image_index += 0.15
        if (image_index >= 6)
        {
            state = 2
            statetime = 0
            sprite_index = sBlobThrowerWaterIdle
            frozenspr = 1487
        }
    }
    if (state == 2)
    {
        image_index += 0.1
        if (image_index >= 4.99 && image_index <= 5.01)
        {
            if (instance_number(oBlobWater) < 30)
            {
                repeat irandom_range(3, 6)
                    instance_create(x, (y - 40), oBlobWater)
            }
        }
        if (statetime > 100 && image_index >= 6)
        {
            state = 3
            statetime = 0
            sprite_index = sBlobThrowerWater
            frozenspr = 1491
            image_index = 6
        }
    }
    if (state == 3)
    {
        if (image_index > 0)
            image_index -= 0.2
        if (image_index <= 0 && statetime > 10)
        {
            state = 0
            statetime = 0
            sprite_index = sBlobThrowerWaterClosed
            frozenspr = 1489
        }
    }
}
if (state == 100)
    enemy_death()
