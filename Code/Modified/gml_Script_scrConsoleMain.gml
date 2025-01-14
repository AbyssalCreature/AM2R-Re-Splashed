var i, _keyFound;
if keyboard_check_pressed(global.CONSOLE_KEY)
{
    global.CONSOLE = (!global.CONSOLE)
    keyboard_lastchar = ""
    keyboard_lastkey = -1
}
if global.CONSOLE
{
    if (keyboard_lastkey != -1)
    {
        switch keyboard_lastkey
        {
            case vk_up:
                if (ConsoleViewLine > 0)
                    ConsoleViewLine--
                break
            case 40:
                if ds_exists(ConsoleHistory, 2)
                {
                    if (ConsoleViewLine < ds_list_size(ConsoleHistory))
                        ConsoleViewLine++
                }
                break
            case 8:
                if (ord(string_char_at(ConsoleEntry, string_length(ConsoleEntry))) == 32)
                    WriteName--
                else if (WriteName == 0)
                    CommandName = string_delete(CommandName, string_length(CommandName), 1)
                else
                    CommandArg = string_delete(CommandArg, string_length(CommandArg), 1)
                ConsoleEntry = string_delete(ConsoleEntry, string_length(ConsoleEntry), 1)
                break
            case 32:
                WriteName++
                ConsoleEntry += " "
                keyboard_lastkey = -1
                break
            case 13:
                scrConsoleCommandRun()
                scrConsoleHistoryUpdate(ConsoleEntry)
                ConsoleEntry = ""
                CommandName = ""
                CommandArg = ""
                WriteName = 0
                break
            default:
                i = 0
                _keyFound = 0
                while (i < VallidCharCount && _keyFound == 0)
                {
                    if (ConsoleKeys[i] == keyboard_lastkey)
                        _keyFound = 1
                    i++
                }
                if _keyFound
                {
                    ConsoleEntry += keyboard_lastchar
                    if (WriteName == 0)
                        CommandName += keyboard_lastchar
                    else
                        CommandArg += keyboard_lastchar
                }
                break
        }

        keyboard_lastkey = -1
    }
}
