var shuff;
while 1
{
    checkcounter = 0
    shuff = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (shuff == 8)
    {
    }
    else
        checkcounter++
    if (checkcounter == 1)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
return shuff;
