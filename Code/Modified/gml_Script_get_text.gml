var text;
ini_open(global.language[global.currentlanguage])
text = ini_read_string(argument0, argument1, "[!]")
ini_close()
return text;
