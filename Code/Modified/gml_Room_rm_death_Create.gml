if oControl.widescreen
{
    view_enabled = true
    view_visible[0] = true
}
Mute_Loops()
if instance_exists(oClient)
    oClient.phase = 0
