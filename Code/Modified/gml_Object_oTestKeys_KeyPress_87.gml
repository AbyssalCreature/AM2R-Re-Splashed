var rm;
if (!instance_exists(oCharacter))
    room_goto(rm_secretEnding)
if (instance_exists(oCharacter) && keyboard_check(vk_shift))
{
    msg = get_string("WARP TO", "rm_a0h01")
    rm = asset_get_index(msg)
    if room_exists(rm)
        room_goto(rm)
    else
        popup_text("Room index does not exist!")
}
