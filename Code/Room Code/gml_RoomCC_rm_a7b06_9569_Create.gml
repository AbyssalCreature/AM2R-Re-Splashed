myid = 54
if (global.metdead[myid] > 0)
    instance_destroy()
if (global.difficulty < 2 && oControl.mod_fusion != 1 && oControl.mod_monstersextreme != 1 && (!global.saxmode))
    instance_destroy()