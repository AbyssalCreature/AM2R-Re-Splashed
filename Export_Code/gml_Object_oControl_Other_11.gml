if (global.playerhealth <= 0 && global.saxmode && global.sax && oCharacter.sprite_index != sCoreXSAX)
    global.playerhealth = 1
if (global.playerhealth >= 0 && global.sax && global.saxmode)
    exit
if (instance_exists(oClient) && oClient.connected)
{
    global.currX = oCharacter.x
    global.currY = oCharacter.y
    with (oClient)
        event_user(9)
}
with (oCharacter)
{
    x -= view_xview[0]
    y -= view_yview[0]
    visible = false
}
view_xview[0] = 0
view_yview[0] = 0
mus_current_fadeout()
sfx_stop_all()
sfx_play(sndPlayerDeath)
global.vibL = 0
global.vibR = 0
global.ingame = 0
global.darkness = 0
global.gotolog = -1
global.transitiontype = 3
if (global.saxmode && (!global.sax))
    global.spectatorOption = 1
if (global.spectatorOption && global.lobbyLocked)
{
    global.spectator = 1
    global.spectatorIndex = -1
}
if global.saxmode
{
    global.mapposx = 2
    global.mapposy = 2
}
event_user(3)
room_goto(rm_death)
