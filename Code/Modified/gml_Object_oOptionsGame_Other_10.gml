var tempcount;
sep = 16
op[50] = instance_create(x, y, oMenuLabel)
op[50].text = get_text("GameplayMenu", "Title_Gameplay")
tempcount = 1
op[num_seed] = instance_create(x, (y + (sep * tempcount++)), oOptionSeed)
op[num_seed].label = get_text("GameplayMenu", "CustomSeed")
op[num_seed].optionid = num_seed
op[num_useSeed] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_useSeed].label = get_text("GameplayMenu", "UseSeed")
op[num_useSeed].optionid = num_useSeed
op[num_elm] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_elm].label = get_text("ExtrasMenu", "ExtremeMonsters")
op[num_elm].optionid = num_elm
op[num_insanity] = instance_create(x, (y + (sep * tempcount++)), oOptionLR)
op[num_insanity].label = get_text("GameplayMenu", "InsanityMode")
op[num_insanity].optionid = num_insanity
op[lastitem] = instance_create(x, (y + (sep * (lastitem + 1))), oPauseOption)
op[lastitem].optionid = lastitem
op[lastitem].label = get_text("GlobalOptions", "Exit")
event_user(2)
