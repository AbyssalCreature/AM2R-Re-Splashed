if (oControl.mod_randomgamebool == 1 && oControl.mod_previous_room == 301 && global.inventory[9] == 0 && global.item[oControl.mod_gravity] == 1 && global.ptanks == 0)
    instance_destroy()
else
    link_tile(tlArea5C, 64, 224)
regentime = -1
