global.start_room = 21
global.save_x = 3408
global.save_y = 1184
global.ingame = 1
global.timeofday = 0
reset_map()
init_map()
load_character_vars()
file_delete((("random" + string((global.saveslot + 1))) + ".ini"))
file_delete((("save" + string((global.saveslot + 1))) + ".dat"))
scr_newgame()
save_game(("save" + string((global.saveslot + 1))))
room_change(global.start_room, 0)
