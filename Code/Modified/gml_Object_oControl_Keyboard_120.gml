if (keyboard_check_pressed(vk_f9) && (!pressed_key))
{
    pressed_key = 1
    palette_number++
    scr_shader_control()
}
if ((!keyboard_check_pressed(vk_f9)) && pressed_key)
    pressed_key = 0
