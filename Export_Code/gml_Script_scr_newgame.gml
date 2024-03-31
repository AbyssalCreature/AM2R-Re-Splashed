oControl.mod_purerandombool = 0
oControl.mod_randomgamebool = 0
oControl.mod_splitrandom = 0
if (global.gamemode == 2 || global.gamemode == 3 || global.gamemode == 4 || global.gamemode == 5)
{
    global.lavastate = 10
    global.event[4] = 1
    global.event[56] = 1
    global.event[155] = 1
    global.event[173] = 1
    global.event[204] = 1
    global.event[259] = 1
    global.event[305] = 1
    global.monstersarea = 43
    if (global.gamemode == 3)
        scr_randomizer()
    if (global.gamemode == 4)
    {
        oControl.mod_purerandombool = 1
        scr_randomizer_pure()
    }
    if (global.gamemode == 5)
    {
        oControl.mod_splitrandom = 1
        scr_rand_split_powerups()
        scr_randomizer_split_items()
    }
}
else
    global.gamemode = 1
global.monstersleft = 47
