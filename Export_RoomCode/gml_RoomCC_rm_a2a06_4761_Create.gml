if (oControl.mod_randomgamebool == 1 && global.inventory[0] == 0 && global.inventory[3] == 0 && global.inventory[9] == 0)
    instance_destroy()
else
    link_tile(tlPipes1, 0, 96)
regentime = 80
