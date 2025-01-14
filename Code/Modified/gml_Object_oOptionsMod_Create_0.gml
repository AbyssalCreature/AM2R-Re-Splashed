var tempnumcounter;
done = 0
global.curropt = 0
tempnumcounter = 0
init = 0
num_censorip = tempnumcounter++
num_ip = tempnumcounter++
num_port = tempnumcounter++
num_name = tempnumcounter++
num_color = tempnumcounter++
num_palette = tempnumcounter++
num_selfpalette = tempnumcounter++
num_showname = tempnumcounter++
num_moderator = tempnumcounter++
num_difficulty = tempnumcounter++
num_elm = tempnumcounter++
num_seedgen = tempnumcounter++
num_customseed = tempnumcounter++
num_reset = tempnumcounter++
num_locklobby = tempnumcounter++
num_saxmode = tempnumcounter++
num_connection = tempnumcounter++
lastitem = tempnumcounter
ip = oControl.ipaddress
name = oControl.name
port = string(oControl.port)
showname = 1
sequence = 1
password = oControl.password
menuDifficulty = global.difficulty
if oControl.mod_fusion
    menuDifficulty = 3
elm = oControl.mod_monstersextremecheck
connectiontxt = "Connect"
if instance_exists(oClient)
    connectiontxt = "Disconnect"
else
    connectiontxt = "Connect"
switch oControl.reactorsequence
{
    case "synced":
        sequence = 1
        break
    case "disabled":
        sequence = 0
        break
}

switch oControl.showname
{
    case "enabled":
        showname = 1
        break
    case "disabled":
        showname = 0
        break
}

vTargetY = ((18 * lastitem) + 30)
editing = 0
active = 0
alarm[0] = 5
i = 0
repeat (lastitem + 1)
{
    canedit[i] = 1
    i += 1
}
targety = y
view_object[0] = id
timer = 0
event_user(0)
with (oSS_Control)
    active = 1
with (oSS_Fg)
    active = 1
tip[num_censorip] = "Toggle whether your IP address is censored"
tip[num_ip] = "Set the IP address of the server"
tip[num_port] = "Set the port of the server"
tip[num_name] = "Set your display name"
tip[num_color] = "Pick your preferred player color"
tip[num_palette] = "Choose palette setting"
tip[num_selfpalette] = "Toggle use of the palette on yourself"
tip[num_showname] = "Enable/disable showing player names"
tip[num_moderator] = "Set the moderator password"
tip[num_difficulty] = "Choose the shared Multitroid difficulty"
tip[num_elm] = "Choose the shared ELM difficulty"
tip[num_seedgen] = "Generate a random seed for Multitroid"
tip[num_customseed] = "Enter a custom seed"
tip[num_reset] = "Reset the server"
tip[num_locklobby] = "Lock the lobby"
tip[num_saxmode] = "Toggle SA-X Mode"
tip[num_connection] = "Connect/disconnect to the server"
tip[lastitem] = get_text("GlobalOptions", "ExitMain_Tip")
global.tiptext = tip[global.curropt]
alarm[1] = 1
