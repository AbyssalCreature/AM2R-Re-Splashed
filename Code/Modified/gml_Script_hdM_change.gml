ini_open("modifiers.ini")
hd = (argument2 * abs(ini_read_real(argument0, argument1, argument2)))
ini_close()
if (hd < argument2)
    return argument2;
return hd;
