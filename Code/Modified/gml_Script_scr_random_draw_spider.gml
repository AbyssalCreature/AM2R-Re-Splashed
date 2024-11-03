var shuff;
while 1
{
    shuff = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (shuff != 2 && shuff != 6 && shuff != 7)
        break
    else if (shuff != 2 && oControl.spider_wall == 0 && oControl.spacejump_wall == 0)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
return shuff;
