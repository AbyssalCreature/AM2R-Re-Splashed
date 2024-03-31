var etanks, mtanks, stanks, ptanks, detail;
etanks = global.etanks
mtanks = global.mtanks
stanks = global.stanks
ptanks = global.ptanks
j = 0
repeat (3)
{
    filename = ((working_directory + "/multitroid/save") + string((j + 1)))
    if file_exists(filename)
    {
        detail = sv6_load_details(filename)
        if (detail == 1)
        {
            op[j].smonsters = global.monstersleft
            op[j].timestring = steps_to_time2(global.gametime)
            op[j].saveroom = global.save_room
            op[j].setanks = global.etanks
            op[j].sprogress = string(round(((global.itemstaken / 88) * 100)))
            op[j].saveexists = file_exists(filename)
            op[j].sdifficulty = global.difficulty
            if (oControl.seed != "")
                op[j].sseed = ((" [" + string(oControl.seed)) + "]")
            else
                op[j].sseed = ""
            op[j].smode = global.gamemode
            if (oControl.mod_fusion == 1)
                op[j].sdifficulty = 3
        }
        else
            op[j].saveexists = 0
    }
    else
        op[j].saveexists = 0
    with (op[j])
        event_user(0)
    j += 1
}
scr_default_global_items()
if instance_exists(oClient)
{
    update_variables("replaceglobalvars")
    global.etanks = etanks
    global.mtanks = mtanks
    global.stanks = stanks
    global.ptanks = ptanks
}
