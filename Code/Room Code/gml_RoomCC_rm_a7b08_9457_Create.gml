myid = 58
if (global.metdead[myid] > 0)
    instance_destroy()
if (global.difficulty < 2 && oControl.mod_fusion != 1 && oControl.mod_monstersextreme != 1)
    instance_destroy()
