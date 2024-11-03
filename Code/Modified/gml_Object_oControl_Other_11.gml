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
event_user(3)
room_goto(rm_death)
