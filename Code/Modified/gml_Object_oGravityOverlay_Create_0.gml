if (oControl.mod_fusion == 1)
    sprite_index = sGravityOverlay_fusion
alarm[0] = 300
image_speed = 0.16
if (instance_exists(oClient) && oClient.connected)
{
    with (oClient)
        event_user(8)
}
