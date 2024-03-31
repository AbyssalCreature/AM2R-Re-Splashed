if (oControl.mod_randomgamebool == 1 && oControl.mod_previous_room == 298 && (global.inventory[9] == 0 || global.inventory[6] == 0))
    instance_destroy()
else
    link_tile(tlArea5C, 32, 192)
