mus_current_fadein()
global.monstersleft = 9
if (global.difficulty == 2)
    global.monstersleft = 16
if (oControl.mod_fusion == 1)
    global.monstersleft = 21
if (oControl.mod_monstersextreme == 1)
    global.monstersleft = 47
instance_destroy()
