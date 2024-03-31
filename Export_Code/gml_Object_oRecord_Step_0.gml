control_state = ""
control_state += string(oControl.kLeft)
control_state += string(oControl.kRight)
control_state += string(oControl.kUp)
control_state += string(oControl.kDown)
control_state += string(oControl.walk_zone)
control_state += string(oControl.kJump)
control_state += string(oControl.kFire)
control_state += string(oControl.kMissile)
control_state += string(oControl.kAim)
control_state += string(oControl.kAim2)
control_state += string(oControl.kSelect)
control_state += string(oControl.kStart)
control_state += string(oControl.kWalk)
control_state += string(oControl.kMorph)
control_state += string(oControl.kMenu1)
control_state += string(oControl.kMenu2)
if (control_state != last_state)
{
    file_text_write_string(fid, string(frame))
    file_text_writeln(fid)
    file_text_write_string(fid, control_state)
    file_text_writeln(fid)
    frames_recorded += 1
}
frame += 1
last_state = control_state
