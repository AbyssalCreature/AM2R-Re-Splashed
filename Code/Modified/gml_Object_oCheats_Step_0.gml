if (global.mod_fusion_unlocked == 0)
{
    if oControl.kUpPressed
    {
        if (modes_code[io_code_modes] == 38)
            io_code_modes++
        else
            io_code_modes = 0
    }
    if oControl.kDownPressed
    {
        if (modes_code[io_code_modes] == 40)
            io_code_modes++
        else
            io_code_modes = 0
    }
    if oControl.kLeftPressed
    {
        if (modes_code[io_code_modes] == 37)
            io_code_modes++
        else
            io_code_modes = 0
    }
    if oControl.kRightPressed
    {
        if (modes_code[io_code_modes] == 39)
            io_code_modes++
        else
            io_code_modes = 0
    }
    if oControl.kMenu1Pressed
    {
        if (modes_code[io_code_modes] == 13)
            io_code_modes++
        else
            io_code_modes = 0
    }
    if oControl.kMenu2Pressed
    {
        if (modes_code[io_code_modes] == 8)
            io_code_modes++
        else
            io_code_modes = 0
    }
    if (io_code_modes == array_length_1d(modes_code))
    {
        sfx_play(sndXMorph1)
        oGameSelMenu.op[3].enabled = 1
        global.mod_fusion_unlocked = 1
        unlock_set(0)
        alarm[0] = 90
        io_code_modes = 0
    }
}
if (global.mod_gamebeaten == 1)
{
    if oControl.kUpPressed
    {
        if (monster_code[io_code_monster] == 38)
            io_code_monster++
        else if (io_code_monster > 1)
            io_code_monster = 0
    }
    if oControl.kDownPressed
    {
        if (monster_code[io_code_monster] == 40)
            io_code_monster++
        else
            io_code_monster = 0
    }
    if oControl.kLeftPressed
    {
        if (monster_code[io_code_monster] == 37)
            io_code_monster++
        else
            io_code_monster = 0
    }
    if oControl.kRightPressed
    {
        if (monster_code[io_code_monster] == 39)
            io_code_monster++
        else
            io_code_monster = 0
    }
    if oControl.kMenu1Pressed
    {
        if (monster_code[io_code_monster] == 13)
            io_code_monster++
        else
            io_code_monster = 0
    }
    if oControl.kMenu2Pressed
    {
        if (monster_code[io_code_monster] == 8)
            io_code_monster++
        else
            io_code_monster = 0
    }
    if (io_code_monster == array_length_1d(monster_code))
    {
        sfx_play(choose(162, 380, 381, 382))
        oControl.mod_earlybaby = (!oControl.mod_earlybaby)
        save_gameoptions()
        io_code_monster = 0
    }
}
