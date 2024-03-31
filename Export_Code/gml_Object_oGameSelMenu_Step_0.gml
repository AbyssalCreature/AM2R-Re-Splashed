if instance_exists(oSlotMenu_Fusion)
    op[3].hide = 1
else
    op[3].hide = 0
if active
{
    if (oControl.kDown && oControl.kDownPushedSteps == 0)
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        global.saveslot = global.curropt
        sfx_play(sndMenuMove)
    }
    if (oControl.kUp && oControl.kUpPushedSteps == 0)
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        global.saveslot = global.curropt
        sfx_play(sndMenuMove)
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        sfx_play(sndMenuSel)
        if (global.curropt >= 0 && global.curropt < 3)
        {
            if (op[global.curropt].saveexists == 0)
            {
                instance_create(0, 0, oSlotMenu_normal_only)
                active = 0
            }
            else
            {
                instance_create(0, 0, oSlotMenu1)
                active = 0
            }
        }
        if (global.curropt == 4)
        {
            room_persistent = true
            room_change(6, 0)
        }
        if (global.curropt == 5 && op[5].enabled)
        {
            room_persistent = true
            room_change(5, 0)
        }
        if (global.curropt == 6)
        {
            room_persistent = true
            global.creditsmenuopt = 1
            room_change(4, 0)
        }
        if (global.curropt == 3 && op[3].enabled)
        {
            room_persistent = true
            room_change(394, 0)
        }
        if (global.curropt == 7)
            game_end()
    }
}
if (image_alpha < 1 && fadein)
    image_alpha += 0.05
