filename = "rec.txt"
control_state = ""
last_state = "0"
control_read = ""
frame_read = 0
frame = 0
control_read[30000] = 0
if (!file_exists(filename))
{
    popup_text("File not found")
    instance_destroy()
}
else
{
    fid = file_text_open_read(filename)
    start_room = file_text_read_real(fid)
    file_text_readln(fid)
    start_x = file_text_read_real(fid)
    file_text_readln(fid)
    start_y = file_text_read_real(fid)
    file_text_readln(fid)
    start_state = file_text_read_real(fid)
    file_text_readln(fid)
    start_facing = file_text_read_real(fid)
    file_text_readln(fid)
    while (!file_text_eof(fid))
    {
        frame_read = file_text_read_real(fid)
        file_text_readln(fid)
        control_read[frame_read] = file_text_read_string(fid)
        file_text_readln(fid)
    }
    control_read[(frame_read + 1)] = "EOF"
    file_text_close(fid)
    random_set_seed(1)
    global.targetx = start_x
    global.offsetx = 0
    global.targety = start_y
    global.offsety = 0
    global.camstartx = start_x
    global.camstarty = start_y
    room_goto(start_room)
    popup_text("Playback Start")
}
