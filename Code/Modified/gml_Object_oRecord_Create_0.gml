filename = "rec.txt"
control_state = ""
last_state = ""
frames_recorded = 0
frame = 0
start_room = room
start_x = oCharacter.x
start_y = oCharacter.y
start_state = oCharacter.state
start_facing = oCharacter.facing
fid = file_text_open_write(filename)
file_text_write_real(fid, start_room)
file_text_writeln(fid)
file_text_write_real(fid, start_x)
file_text_writeln(fid)
file_text_write_real(fid, start_y)
file_text_writeln(fid)
file_text_write_real(fid, start_state)
file_text_writeln(fid)
file_text_write_real(fid, start_facing)
file_text_writeln(fid)
random_set_seed(1)
global.targetx = start_x
global.offsetx = 0
global.targety = start_y
global.offsety = 0
room_goto(start_room)
popup_text("Rec Start")
