var type, nameLength, size, alignment, i;
network_set_config(0, 5000)
strict_init((working_directory + "/multitroid/dictionary.json"))
queenHealthResetQueued = 0
canSend = 0
metroidCountChanged = 0
itemChanged = 0
metdeadChanged = 0
eventChanged = 0
mapChanged = 0
itemstakenChanged = 0
maxmissilesChanged = 0
maxsmissilesChanged = 0
maxpbombsChanged = 0
maxhealthChanged = 0
etanksChanged = 0
mtanksChanged = 0
stanksChanged = 0
ptanksChanged = 0
healthChanged = 0
missilesChanged = 0
smissilesChanged = 0
pbombsChanged = 0
connected = 0
queenHealthWait = 0
queenDead = 0
sameRoom = 0
queenHealth = (global.mod_queenHstart + (global.mtanks * 10))
phase = 0
maxpbombsTimer = 10
maxhealthTimer = 10
etanksTimer = 10
mtanksTimer = 10
stanksTimer = 10
ptanksTimer = 10
healthTimer = 10
missilesTimer = 10
smissilesTimer = 10
pbombsTimer = 10
teleportTimer = 180
disconnectTimer = 900
pingTimer = 90
currentItemsTimer = 120
resetTimer = -1
teleport = 0
noName = 0
syncedDifficulty = 1
elm = 0
state = undefined
seed = undefined
type = buffer_fixed
syncedDifficulty = global.difficulty
elm = oControl.mod_monstersextremecheck
ini_open((working_directory + "/multitroid/mod_settings.ini"))
ipaddress = ini_read_string("ModSettings", "ipaddress", "127.0.0.1")
name = ini_read_string("ModSettings", "displayname", "name")
port = ini_read_real("ModSettings", "port", 64198)
reactorsequence = string_lower(ini_read_string("ModSettings", "reactorsequence", "synced"))
preferredcolor = string_lower(ini_read_string("ModSettings", "preferredcolor", "random"))
showName = string_lower(ini_read_string("ModSettings", "showname", "enabled"))
ini_close()
nameLength = string_length(name)
if (nameLength > 15)
{
    name = string_copy(name, 1, 15)
    ini_open((working_directory + "/multitroid/mod_settings.ini"))
    ini_write_string("ModSettings", "displayname", name)
    ini_close()
}
if (string_length(name) == 0)
{
    noName = 1
    popup_text_ext("Set a name before connecting", 180)
    instance_destroy()
}
socket = network_create_socket(type)
isConnected = network_connect(socket, ipaddress, port)
switch preferredcolor
{
    case "green":
        preferredcolor = 1
        break
    case "red":
        preferredcolor = 2
        break
    case "blue":
        preferredcolor = 3
        break
    case "yellow":
        preferredcolor = 4
        break
    case "orange":
        preferredcolor = 5
        break
    case "purple":
        preferredcolor = 6
        break
    case "pink":
        preferredcolor = 7
        break
    case "white":
        preferredcolor = 8
        break
    case "canary":
        preferredcolor = 9
        break
    case "red orange":
        preferredcolor = 10
        break
    case "sky blue":
        preferredcolor = 11
        break
    case "gold":
        preferredcolor = 12
        break
    case "porsche":
        preferredcolor = 13
        break
    case "light purple":
        preferredcolor = 14
        break
    case "hot pink":
        preferredcolor = 15
        break
    case "retro green":
        preferredcolor = 16
        break
    case "random":
        preferredcolor = 17
        break
}

size = 1024
type = buffer_grow
alignment = 1
buffer = buffer_create(size, type, alignment)
global.queenhealthPrev = (global.mod_queenHstart + (global.mtanks * 10))
global.queenphasePrev = 0
global.prevX = 0
global.prevY = 0
global.prevSprite = 0
global.prevIndex = 0
global.prevInvincible = 0
global.roomPrev = room
global.ping = 0
global.clientID = 0
global.packetID = 0
global.receivedPacketID = 0
global.onlineList = ds_grid_create(3, 20)
global.onlineSend = ds_grid_create(3, 20)
global.onlineItem = ds_list_create()
global.onlineMetdead = ds_list_create()
global.onlineEvent = ds_list_create()
global.onlineReceived = ds_grid_create(3, 20)
roomList = ds_list_create()
roomListData = ds_list_create()
global.idList = ds_list_create()
posData = ds_list_create()
global.hatchlingList = ds_list_create()
global.speedList = ds_list_create()
global.screwList = ds_list_create()
global.hitboxList = ds_list_create()
global.otherPlayerItems = ds_list_create()
ds_grid_clear(global.onlineSend, -1)
ds_grid_clear(global.onlineReceived, -1)
for (i = 0; i < ds_grid_height(global.onlineList); i++)
    ds_grid_set(global.onlineList, 2, i, i)
update_variables("initprev")
update_variables("onlinevars")
if (os_type != os_android)
    alpha = 1
else
    alpha = 0.8
posX = 3
posY = 3
time = 60
trail = 0
kicked = 0
banned = 0
SJSTART = 29
SUPERJUMP = 30
SJEND = 31
HURT = 32
sizeX = 1
sizeY = 1
global.receiving = 0
beginReceiveTimer = 300
