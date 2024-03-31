if (state == 1)
{
    if (statetime == 0)
    {
        image_index = 8
        door_open = 1
        oCharacter.canbehit = 0
    }
    if (statetime < 60)
    {
        if (oCharacter.x > posx)
        {
            with (oCharacter)
                x -= 1
        }
        if (oCharacter.x < posx)
        {
            with (oCharacter)
                x += 1
        }
    }
    if (statetime == 60)
    {
        depth = -2
        door_open = 0
        sfx_play(sndA5WarpDoor)
    }
    if (statetime == 90)
    {
        fx = instance_create(oCharacter.x, oCharacter.y, oWarpPlayerFX)
        fx.direction = direction
        fx.speed = 8
        fx.mode = 0
        with (oCharacter)
            visible = false
        sfx_play(sndA5Warp)
    }
    if (statetime == 120)
    {
        global.targetx = targetx
        global.targety = targety
        global.camstartx = targetx
        global.camstarty = targety
        oCamera.x = global.camstartx
        oCamera.y = global.camstarty
        global.offsetx = 0
        global.offsety = 0
        oCharacter.x = 0
        oCharacter.y = 0
        room_change(targetroom, 0)
        Mute_Loops()
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        depth = -90
        image_index = 0
        fx = instance_create((oCharacter.x + lengthdir_x(160, direction)), (oCharacter.y + lengthdir_y(160, direction)), oWarpPlayerFX)
        fx.direction = (direction + 180)
        fx.speed = 8
        fx.mode = 1
    }
    if (statetime == 60)
    {
        sfx_play(sndA5WarpDoor)
        door_open = 1
        with (oCharacter)
            visible = true
    }
    if (statetime == 72)
        depth = 90
    if (statetime == 90)
    {
        with (oCharacter)
        {
            state = 23
            statetime = 0
            morphing = 0
            turning = 0
            canbehit = 1
        }
        state = 3
        statetime = 0
    }
}
if (state == 3)
{
    if (statetime > 30 && point_distance((x + 8), (y + 16), oCharacter.x, oCharacter.y) > 40)
    {
        state = 0
        statetime = 0
    }
}
if (state == 0)
{
    if (door_open == 0)
    {
        if (point_distance((x + 8), (y + 16), oCharacter.x, oCharacter.y) < 40)
        {
            door_open = 1
            sfx_stop(sndA5WarpDoor)
            sfx_play(sndA5WarpDoor)
        }
    }
    else if (point_distance((x + 8), (y + 16), oCharacter.x, oCharacter.y) >= 40)
    {
        door_open = 0
        sfx_stop(sndA5WarpDoor)
        sfx_play(sndA5WarpDoor)
    }
}
if door_open
{
    if (image_index < 8)
        image_index += 0.5
}
else if (image_index > 0)
    image_index -= 0.5
statetime += 1
