y -= 8
op[0] = instance_create(x, y, oMenuLabel)
op[0].text = get_text("OptionsSound", "Title_Sound")
op[1] = instance_create(x, (y + 16), oOptionSlider)
op[1].label = get_text("OptionsSound", "SoundVolume")
op[1].optionid = 0
op[2] = instance_create(x, (y + 32), oOptionSlider)
op[2].label = get_text("OptionsSound", "MusicVolume")
op[2].optionid = 1
op[3] = instance_create(x, (y + 48), oOptionLR)
op[3].label = get_text("ExtrasMenu", "LowHealthAlarm")
op[3].optionid = 2
op[4] = instance_create(x, (y + 64), oPauseOption)
op[4].optionid = 3
op[4].label = get_text("GlobalOptions", "Exit")
event_user(2)
