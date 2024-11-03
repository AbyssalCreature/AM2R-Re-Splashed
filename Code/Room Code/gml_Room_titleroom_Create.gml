mus_loop(musTitle)
global.vibL = 0
global.vibR = 0
scr_default_global_items()
if file_exists((working_directory + "\swap.ini"))
    file_delete((working_directory + "\swap.ini"))
