fadeAlpha = 0
newRoom = 0
fadeSpeed = 5
alarm[0] = fadeSpeed
fade = 1
textalpha = 0
timer = 0
unlockmessage = 0
unlockalpha = 0
if (global.mod_fusion_unlocked == 0)
{
    unlockmessage = 1
    global.mod_fusion_unlocked = 1
    save_stats2()
}
