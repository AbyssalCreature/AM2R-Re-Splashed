if (os_type == os_android)
    instance_destroy()
if (mouse_check_button(mb_left) && global.ingame)
{
    oCharacter.x = mouse_x
    oCharacter.y = mouse_y
}
