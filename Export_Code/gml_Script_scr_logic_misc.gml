while 1
{
    checkcounter = 0
    temp_mod = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (argument0 == 1)
    {
        if (argument1 == 1)
            checkcounter++
        else if (temp_mod != 0)
            checkcounter++
    }
    else
        checkcounter++
    if (argument2 == 1)
    {
        if (argument3 == 1)
            checkcounter++
        else if (temp_mod != 58 && temp_mod != 59 && temp_mod != 112 && temp_mod != 160 && temp_mod != 212 && temp_mod != 213 && temp_mod != 258 && temp_mod != 301 && temp_mod != 302)
            checkcounter++
    }
    else
        checkcounter++
    if (argument4 == 1)
    {
        if (argument5 == 1)
            checkcounter++
        else if (temp_mod != 7)
            checkcounter++
    }
    else
        checkcounter++
    if (argument6 == 1)
    {
        if (argument7 == 1)
            checkcounter++
        else if (temp_mod != 6)
            checkcounter++
    }
    else
        checkcounter++
    if (checkcounter == 4)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
return temp_mod;
