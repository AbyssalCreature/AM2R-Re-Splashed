if (oControl.mod_fusion == 1 || oControl.mod_suitchangecheat == 1)
{
    if (global.currentsuit == 0)
    {
        if global.ibeam
            return asset_get_index((sprite_get_name(argument1) + "_omega"));
        else
            return argument1;
    }
    else if (global.currentsuit == 1)
    {
        if global.ibeam
            return asset_get_index((sprite_get_name(argument1) + "_omega"));
        else
            return asset_get_index((sprite_get_name(argument1) + "_varia"));
    }
    else if (global.currentsuit == 2)
    {
        if global.ibeam
            return asset_get_index((sprite_get_name(argument1) + "_omega"));
        else
            return asset_get_index((sprite_get_name(argument1) + "_gravity"));
    }
}
else
    return argument0;
