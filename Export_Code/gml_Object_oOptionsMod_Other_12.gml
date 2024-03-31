var color, _sequence, _showname;
color = "random"
_sequence = "synced"
_showname = "enabled"
if oControl.censorip
{
    if init
        op[num_ip].optext = ip
}
else
    op[num_ip].optext = ip
op[num_port].optext = port
op[num_name].optext = name
op[num_moderator].optext = password
op[num_customseed].optext = string(global.multiCustomSeed)
switch oControl.preferredcolor
{
    case 1:
        op[num_color].optext = "Green"
        break
    case 2:
        op[num_color].optext = "Red"
        break
    case 3:
        op[num_color].optext = "Blue"
        break
    case 4:
        op[num_color].optext = "Yellow"
        break
    case 5:
        op[num_color].optext = "Orange"
        break
    case 6:
        op[num_color].optext = "Purple"
        break
    case 7:
        op[num_color].optext = "Pink"
        break
    case 8:
        op[num_color].optext = "White"
        break
    case 9:
        op[num_color].optext = "Canary"
        break
    case 10:
        op[num_color].optext = "Red Orange"
        break
    case 11:
        op[num_color].optext = "Sky Blue"
        break
    case 12:
        op[num_color].optext = "Gold"
        break
    case 13:
        op[num_color].optext = "Porsche"
        break
    case 14:
        op[num_color].optext = "Light Purple"
        break
    case 15:
        op[num_color].optext = "Hot Pink"
        break
    case 16:
        op[num_color].optext = "Retro Green"
        break
    case 17:
        op[num_color].optext = "Random"
        break
}

switch showname
{
    case 0:
        op[num_showname].optext = "disabled"
        oControl.showname = "disabled"
        break
    case 1:
        op[num_showname].optext = "enabled"
        oControl.showname = "enabled"
        break
}

switch oControl.preferredcolor
{
    case 1:
        color = "green"
        break
    case 2:
        color = "red"
        break
    case 3:
        color = "blue"
        break
    case 4:
        color = "yellow"
        break
    case 5:
        color = "orange"
        break
    case 6:
        color = "purple"
        break
    case 7:
        color = "pink"
        break
    case 8:
        color = "white"
        break
    case 9:
        color = "canary"
        break
    case 10:
        color = "red orange"
        break
    case 11:
        color = "sky blue"
        break
    case 12:
        color = "gold"
        break
    case 13:
        color = "porsche"
        break
    case 14:
        color = "light purple"
        break
    case 15:
        color = "hot pink"
        break
    case 16:
        color = "retro green"
        break
    case 17:
        color = "random"
        break
}

switch sequence
{
    case 0:
        _sequence = "disabled"
        break
    case 1:
        _sequence = "synced"
        break
}

switch showname
{
    case 0:
        _showname = "disabled"
        break
    case 1:
        _showname = "enabled"
        break
}

switch oControl.palette
{
    case 0:
        op[num_palette].optext = "Default"
        break
    case 1:
        op[num_palette].optext = "Color"
        break
    case 2:
        op[num_palette].optext = "Custom"
        break
    case 3:
        op[num_palette].optext = "Disabled"
        break
}

switch oControl.useselfpalette
{
    case 0:
        op[num_selfpalette].optext = "Disabled"
        break
    case 1:
        op[num_selfpalette].optext = "Enabled"
        break
}

switch oControl.censorip
{
    case 0:
        op[num_censorip].optext = "Disabled"
        break
    case 1:
        op[num_censorip].optext = "Enabled"
        break
}

switch global.lobbyLocked
{
    case 0:
        op[num_locklobby].optext = "Open"
        break
    case 1:
        op[num_locklobby].optext = "Locked"
        break
}

switch global.saxmode
{
    case 0:
        op[num_saxmode].optext = "Disabled"
        break
    case 1:
        op[num_saxmode].optext = "Enabled"
        break
}

ini_open((working_directory + "/multitroid/mod_settings.ini"))
ini_write_string("ModSettings", "ipaddress", ip)
ini_write_real("ModSettings", "port", real(port))
ini_write_string("ModSettings", "displayname", name)
ini_write_string("ModSettings", "reactorsequence", _sequence)
ini_write_string("ModSettings", "preferredcolor", color)
ini_write_string("ModSettings", "showname", _showname)
ini_write_real("ModSettings", "palette", oControl.palette)
ini_write_real("ModSettings", "censorip", oControl.censorip)
ini_write_real("ModSettings", "selfpalette", oControl.useselfpalette)
ini_write_string("ModSettings", "moderatorpass", password)
ini_close()
oControl.ipaddress = ip
oControl.name = name
oControl.port = real(port)
oControl.password = password
