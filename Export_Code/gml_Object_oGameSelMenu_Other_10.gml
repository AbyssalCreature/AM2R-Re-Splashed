var space;
op[0] = instance_create(64, 40, oMenuSaveSlot)
op[0].slot = 0
op[1] = instance_create(64, 84, oMenuSaveSlot)
op[1].slot = 1
op[2] = instance_create(64, 128, oMenuSaveSlot)
op[2].slot = 2
event_user(2)
space = 14
i = 0
op[3] = instance_create((x + 120), (y + (space * i)), oNormalOptionR)
op[3].optionid = 3
op[3].label = get_text("GameplayMenu", "Gameplay")
op[3].enabled = global.mod_gamebeaten
i += 1
op[4] = instance_create((x + 120), (y + (space * i)), oNormalOptionR)
op[4].optionid = 4
op[4].label = get_text("Title", "Options")
i += 1
op[5] = instance_create((x + 120), (y + (space * i)), oNormalOptionR)
op[5].optionid = 5
op[5].label = get_text("Title", "Gallery")
op[5].enabled = (global.gallery[0] == 1 || global.gallery[1] == 1 || global.gallery[2] == 1)
i += 1
op[6] = instance_create((x + 120), (y + (space * i)), oNormalOptionR)
op[6].optionid = 6
op[6].label = get_text("Title", "Credits")
i += 1
op[7] = instance_create((x + 120), (y + (space * i)), oNormalOptionR)
op[7].optionid = 7
op[7].label = get_text("Title", "Exit")
i += 1
i = 3
repeat (5)
{
    op[i].targetx = x
    op[i].alarm[0] = 1
    op[i].depth = 0
    i += 1
}
