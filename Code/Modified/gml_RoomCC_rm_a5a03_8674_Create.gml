if (oControl.mod_randomgamebool == 1 && oControl.mod_previous_room == 298 && (global.item[9] == 0 || global.item[6] == 0))
    instance_destroy()
else
    link_tile(tlArea5C, 48, 208)
