if (oControl.mod_randomgamebool == 1 && oControl.mod_previous_room == 215 && global.inventory[8] == 0)
    instance_destroy()
else
    link_tile(tlArea4Tech, 32, 128)
regentime = -1
