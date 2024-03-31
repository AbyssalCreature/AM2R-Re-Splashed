var shuff;
while 1
{
    checkcounter = 0
    shuff = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (shuff == 7 && (oControl.gravity_wall == 1 || oControl.spider_wall == 1))
    {
    }
    else
        checkcounter++
    if (shuff != 9)
        checkcounter++
    if (shuff != 2)
        checkcounter++
    if (checkcounter == 3)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
return shuff;
