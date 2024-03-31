if ds_exists(ConsoleHistory, 2)
    ds_list_destroy(ConsoleHistory)
if ds_exists(ConsoleCommands, 1)
    ds_map_destroy(ConsoleCommands)
