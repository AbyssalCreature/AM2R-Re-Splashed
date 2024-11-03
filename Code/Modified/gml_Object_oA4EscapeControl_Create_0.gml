steps = 0
drawbar = 0
temp = 0
bgw = 0
gototemp = 0
alarm[1] = 400
barfx = 0
powercelltext = string(get_text("Misc", "TowerCellTemp"))
barratio = (max(((string_length(string(powercelltext)) * 5) + 50), 162) / 162)
mus_current_stop()
