if (!breaking)
{
    breaking = 1
    if (tileid != 0)
    {
        if tile_exists(tileid)
            tile_delete(tileid)
    }
    if (sboost == 0)
    {
        if (delay == 0)
            event_user(2)
        else
        {
            alarm[0] = delay
            visible = true
            sprite_index = sBlockDestroy
            image_speed = 0
            image_index = 0
        }
    }
    else
    {
        alarm[0] = (delay + 6)
        visible = true
        sprite_index = sBlockDestroy
        image_speed = 0
        image_index = 0
    }
}
