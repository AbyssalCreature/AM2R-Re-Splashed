var cc2;
oControl.mod_spider = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
oControl.mod_jumpball = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
oControl.mod_hijump = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
oControl.mod_varia = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
while 1
{
    checkcount = 0
    oControl.mod_spacejump = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
    if (oControl.mod_spacejump != 4 && oControl.mod_spacejump != 8 && oControl.mod_spacejump != 11 && oControl.mod_spacejump != 250 && oControl.mod_spacejump != 252)
        checkcount++
    if (oControl.mod_spacejump != 306 && oControl.mod_spacejump != 212)
        checkcount++
    if (oControl.mod_spacejump == 158 || oControl.mod_spacejump == 160 || oControl.mod_spacejump == 161)
    {
        cc2 = 0
        if (oControl.mod_hijump == 158 || oControl.mod_hijump == 160 || oControl.mod_hijump == 161)
            cc2++
        if (cc2 == 0)
            checkcount++
    }
    else
        checkcount++
    if (checkcount == 3)
        break
    else
    {
        ds_list_shuffle(list_locations)
        continue
    }
}
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
oControl.mod_charge = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
oControl.mod_ice = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
oControl.mod_wave = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
oControl.mod_spazer = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
oControl.mod_plasma = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
while 1
{
    checkcount = 0
    oControl.mod_speedbooster = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
    if (oControl.mod_speedbooster != 4 && oControl.mod_speedbooster != 8 && oControl.mod_speedbooster != 11 && oControl.mod_speedbooster != 250 && oControl.mod_speedbooster != 252)
        checkcount++
    if scr_speedbooster_wall(oControl.mod_speedbooster)
        checkcount++
    if (oControl.mod_speedbooster == 57)
    {
        cc2 = 0
        if scr_speedbooster_wall(oControl.mod_spacejump)
            cc2++
        if scr_speedbooster_wall(oControl.mod_hijump)
            cc2++
        if (cc2 != 2)
            checkcount++
    }
    else
        checkcount++
    if (oControl.mod_speedbooster == 158)
    {
        cc2 = 0
        if scr_speedbooster_wall(oControl.mod_spacejump)
            cc2++
        if scr_speedbooster_wall(oControl.mod_hijump)
            cc2++
        if scr_speedbooster_wall(oControl.mod_bombs)
            cc2++
        if (cc2 != 3)
            checkcount++
    }
    else
        checkcount++
    if (checkcount == 4)
        break
    else
    {
        ds_list_shuffle(list_locations)
        continue
    }
}
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
while 1
{
    checkcount = 0
    oControl.mod_screwattack = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
    if (oControl.mod_screwattack != 4 && oControl.mod_screwattack != 11 && oControl.mod_screwattack != 250 && oControl.mod_screwattack != 252)
        checkcount++
    if (oControl.mod_speedbooster == 160 || oControl.mod_speedbooster == 259 || oControl.mod_speedbooster == 300)
    {
        if scr_speedbooster_wall(oControl.mod_screwattack)
            checkcount++
    }
    else
        checkcount++
    if (checkcount == 2)
        break
    else
    {
        ds_list_shuffle(list_locations)
        continue
    }
}
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
while 1
{
    checkcount = 0
    oControl.mod_bombs = ds_list_find_value(list_locations, (ds_list_size(list_locations) - 1))
    if (oControl.mod_speedbooster == 53)
    {
        if scr_speedbooster_wall(oControl.mod_bombs)
            checkcount++
    }
    else
        checkcount++
    if (oControl.mod_bombs == 158 || oControl.mod_bombs == 160 || oControl.mod_bombs == 161)
    {
        cc2 = 0
        if (oControl.mod_hijump == 158 || oControl.mod_hijump == 160 || oControl.mod_hijump == 161)
            cc2++
        if (oControl.mod_spacejump == 158 || oControl.mod_spacejump == 160 || oControl.mod_spacejump == 161)
            cc2++
        if (cc2 == 0)
            checkcount++
    }
    else
        checkcount++
    if (checkcount == 2)
        break
    else
    {
        ds_list_shuffle(list_locations)
        continue
    }
}
ds_list_delete(list_locations, (ds_list_size(list_locations) - 1))
