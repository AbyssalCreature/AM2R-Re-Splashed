var ID, input;
ID = ds_map_find_value(async_load, "id")
if (ID == msg && global.curropt == num_ip)
{
    if ds_map_find_value(async_load, "status")
    {
        input = ds_map_find_value(async_load, "result")
        if is_string(input)
        {
            ini_open((working_directory + "/multitroid/settings.ini"))
            ini_write_string("Settings", "ipaddress", input)
            ini_close()
            ip = input
            oControl.ipaddress = ip
            op[num_ip].optext = ip
            event_user(2)
        }
    }
    editing = (!editing)
    op[num_ip].editing = editing
}
if (ID == msg && global.curropt == num_port)
{
    if ds_map_find_value(async_load, "status")
    {
        input = ds_map_find_value(async_load, "value")
        if is_real(input)
        {
            ini_open((working_directory + "/multitroid/settings.ini"))
            ini_write_real("Settings", "port", input)
            ini_close()
            port = string(input)
            op[num_port].optext = port
            event_user(2)
        }
    }
    editing = (!editing)
    op[num_port].editing = editing
}
if (ID == msg && global.curropt == num_name)
{
    if ds_map_find_value(async_load, "status")
    {
        input = ds_map_find_value(async_load, "result")
        if is_string(input)
        {
            ini_open((working_directory + "/multitroid/settings.ini"))
            ini_write_string("Settings", "name", input)
            ini_close()
            name = input
            op[num_name].optext = name
            event_user(2)
        }
    }
    editing = (!editing)
    op[num_name].editing = editing
}
if (ID == msg && global.curropt == num_moderator)
{
    if ds_map_find_value(async_load, "status")
    {
        input = ds_map_find_value(async_load, "result")
        if is_string(input)
        {
            password = input
            op[num_moderator].optext = password
            event_user(2)
        }
    }
    editing = (!editing)
    op[num_moderator].editing = editing
}
if (ID == msg && global.curropt == num_customseed)
{
    if ds_map_find_value(async_load, "status")
    {
        input = ds_map_find_value(async_load, "result")
        if is_real(input)
        {
            global.multiCustomSeed = input
            op[num_customseed].optext = string(global.multiCustomSeed)
            event_user(2)
        }
    }
    editing = (!editing)
    op[num_customseed].editing = editing
}
