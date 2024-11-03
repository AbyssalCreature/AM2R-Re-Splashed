with (oCharacter)
    instance_destroy()
with (oCamera)
    instance_destroy()
if instance_exists(oQuake)
{
    with (oQuake)
        instance_destroy()
}
if instance_exists(oBigQuake)
{
    with (oBigQuake)
        instance_destroy()
}
sfx_stop_loops()
mus_current_fadeout()
global.ingame = 0
room_goto(demoendroom)
