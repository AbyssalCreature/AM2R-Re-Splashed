time += 0.1
image_speed = 0
if (collision_line((x + 8), y, (x + 24), y, oCharacter, false, true) || collision_line((x + 8), (y + 16), (x + 24), (y + 16), oCharacter, false, true))
    enabled = 1
else
    enabled = 0
if collision_line((x + 8), y, (x + 24), y, oCharacter, false, true)
    cansave = 1
else
    cansave = 0
if (enabled == 1 && image_index < 9)
    image_index += 0.5
if (enabled == 0 && image_index > 0.2)
    image_index -= 0.5
if (saveenabled == 1 && cansave == 1 && (oCharacter.state == 10 || oCharacter.state == 12) && oCharacter.statetime >= 10)
{
    if (oControl.mod_insanitymode == 1 && global.event[304] == 0)
        exit
    global.savexpos = (x + 16)
    global.start_room = 21
    global.save_x = 3408
    global.save_y = 1184
    saveenabled = 0
    alarm[0] = 300
    with (oCharacter)
    {
        state = SAVINGSHIP
        savedisplay = 0
        statetime = 0
        savedone = 0
        canrun = 0
        if (facing == RIGHT)
            sprite_index = sFrontR
        if (facing == LEFT)
            sprite_index = sFrontL
    }
}
