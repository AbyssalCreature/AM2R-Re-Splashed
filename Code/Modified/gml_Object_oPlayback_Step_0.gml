if (string_length(control_read[frame]) > 0)
{
    if (control_read[frame] == "EOF")
    {
        popup_text("Playback Finished")
        instance_destroy()
        exit
    }
    if (control_state != last_state)
        control_state = control_read[frame]
}
oControl.kLeft = real(string_char_at(control_state, 1))
oControl.kRight = real(string_char_at(control_state, 2))
oControl.kUp = real(string_char_at(control_state, 3))
oControl.kDown = real(string_char_at(control_state, 4))
oControl.walk_zone = real(string_char_at(control_state, 5))
oControl.kJump = real(string_char_at(control_state, 6))
oControl.kFire = real(string_char_at(control_state, 7))
oControl.kMissile = real(string_char_at(control_state, 8))
oControl.kAim = real(string_char_at(control_state, 9))
oControl.kAim2 = real(string_char_at(control_state, 10))
oControl.kSelect = real(string_char_at(control_state, 11))
oControl.kStart = real(string_char_at(control_state, 12))
oControl.kWalk = real(string_char_at(control_state, 13))
oControl.kMorph = real(string_char_at(control_state, 14))
oControl.kMenu1 = real(string_char_at(control_state, 15))
oControl.kMenu2 = real(string_char_at(control_state, 16))
frame += 1
