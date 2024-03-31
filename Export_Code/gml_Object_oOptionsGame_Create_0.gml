var tempnumcounter, i;
global.curropt = 0
tempnumcounter = 0
num_seed = tempnumcounter++
num_useSeed = tempnumcounter++
num_elm = tempnumcounter++
num_insanity = tempnumcounter++
lastitem = tempnumcounter
seed = string(oControl.mod_seed)
while (string_length(seed) < 10)
    seed = ("0" + seed)
editing = 0
digit = 0
i = 0
repeat (10)
{
    digit[i] = string_char_at(seed, (i + 1))
    i++
}
vTargetY = ((18 * lastitem) + 30)
active = 0
alarm[0] = 5
i = 0
repeat (lastitem + 1)
{
    canedit[i] = 1
    i += 1
}
targety = y
view_object[0] = id
timer = 0
event_user(0)
tip[num_seed] = get_text("GameplayMenu", "CustomSeed_Tip")
tip[num_useSeed] = get_text("GameplayMenu", "UseSeed_Tip")
tip[num_elm] = get_text("ExtrasMenu", "ExtremeMonsters_Tip")
tip[num_insanity] = get_text("GameplayMenu", "InsanityMode_Tip")
tip[lastitem] = get_text("GlobalOptions", "ExitMain_Tip")
global.tiptext = tip[global.curropt]
alarm[1] = 1
