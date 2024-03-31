var i;
global.CONSOLE_KEY = 9
global.CONSOLE = 0
CommandPrefix = "!"
WriteName = 0
CommandName = ""
CommandArg = ""
ConsoleVallidChars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ!_"
VallidCharCount = string_length(ConsoleVallidChars)
ConsoleKeys[0] = -1
for (i = 1; i <= VallidCharCount; i++)
    ConsoleKeys[(i - 1)] = ord(string_char_at(ConsoleVallidChars, i))
ConsoleEntry = ""
ConsoleHistory = ds_list_create()
ConsoleLineCount = 5
ConsoleViewLine = 0
ConsoleCommands = ds_map_create()
scrConsoleCommandAdd(0, "help")
scrConsoleCommandAdd(1, "debug", "true", "false")
