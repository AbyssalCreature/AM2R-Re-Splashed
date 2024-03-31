global.targetroom = argument0
global.transitiontype = argument1
with (oControl)
{
    event_user(3)
    fadedone = 0
}
room_goto(rm_transition)
