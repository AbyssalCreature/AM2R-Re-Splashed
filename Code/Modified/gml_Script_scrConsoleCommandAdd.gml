var _name, _args, i;
if (argument_count > 1)
{
    if is_string(argument[1])
    {
        _name = (CommandPrefix + argument[1])
        _args[0] = argument[0]
        if (argument_count > 2)
        {
            for (i = 2; i < argument_count; i++)
                _args[(i - 1)] = argument[i]
        }
        if ds_exists(ConsoleCommands, 1)
            ds_map_add(ConsoleCommands, _name, _args)
    }
}
