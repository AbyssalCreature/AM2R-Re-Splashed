var block_id;
if (room != rm_transition)
{
    characterStepEvent()
    prevmapposx = global.mapposx
    prevmapposy = global.mapposy
    global.myposx = floor((x / 320))
    global.myposy = floor(((y - 8) / 240))
    global.mapposx = (global.myposx + global.mapoffsetx)
    global.mapposy = (global.myposy + global.mapoffsety)
    if (global.dmap[global.mapposx, global.mapposy] == 0)
        global.dmap[global.mapposx, global.mapposy] = 1
    if (prevmapposx != global.mapposx || prevmapposy != global.mapposy)
    {
        with (oControl)
            event_user(2)
    }
}
else
    image_speed = 0
block_id = noone
if instance_exists(oBlockStep)
{
    if platformCharacterIs(ON_GROUND)
    {
        if (dash == 0)
            block_id = collision_line((x - 6), (y + 1), (x + 6), (y + 1), oBlockStep, false, true)
        else
        {
            block_id = collision_point(x, (y + 1), oBlockStep, 0, 1)
            if (block_id != noone && y < (block_id.y + 2))
            {
                with (block_id)
                    sboost = 1
            }
        }
        if (block_id != noone && y < (block_id.y + 2))
        {
            with (block_id)
                event_user(0)
        }
    }
    else if (state == GRIP)
    {
        if (facing == RIGHT)
            block_id = collision_point((x + 8), (y - 24), oBlockStep, 0, 1)
        else
            block_id = collision_point((x - 8), (y - 24), oBlockStep, 0, 1)
        if (block_id != noone)
        {
            with (block_id)
                event_user(0)
        }
    }
}
if instance_exists(empspark)
{
    if ((turning == 0 && morphing == 0 && unmorphing == 0 && walljumping == 0 && (state == STANDING || state == RUNNING || state == DUCKING || (state == JUMPING && vjump == 1))) || (state == GRIP && ((facing == RIGHT && aimdirection != 0) || (facing == LEFT && aimdirection != 1))))
    {
        empspark.x = (x + aspr2x)
        empspark.y = (y + aspr2y)
    }
}
