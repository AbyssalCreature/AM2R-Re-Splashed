if (global.spacejump == 0 && global.screwattack == 0)
    spinjump_sound = 4
if (global.spacejump == 1 && global.screwattack == 0)
    spinjump_sound = 5
if (global.spacejump == 0 && global.screwattack == 1)
    spinjump_sound = 6
if (global.spacejump == 1 && global.screwattack == 1)
    spinjump_sound = 7
if (inwater && global.currentsuit < 2)
    spinjump_sound = 350
