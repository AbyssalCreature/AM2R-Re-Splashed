playerx = 350
playertgtx = -50
if (oControl.mod_fusion == 1)
    playertgtx = 5
playery = 18
glow1x = -33
glow1y = 28
glow2x = 29
glow2y = 105
glow3x = 17
glow3y = 209
glow4x = -50
glow4y = 18
glow_alpha = 0
bgx = 0
bgtgtx = -80
bgy = 0
tx1x = 250
tx1y = 70
tx2x = 307
tx2y = 220
tx1_alpha = 0
tx2_alpha = 0
i = 0
ralpha = 0
fadeout = 0
walpha = 0
text1 = get_text("ScoreScreen", "ClearTime")
text1a = steps_to_time2(global.gametime)
text2 = get_text("ScoreScreen", "ItemCollection")
text2a = (string(round(((global.itemstaken / 88) * 100))) + "%")
text3 = get_text("ScoreScreen", "SeeYouNextMission")
text4 = get_text("ScoreScreen", "TheLastMonster")
text5 = get_text("ScoreScreen", "ToBeContinued")
statetime = 0
state = 0
if (global.difficulty == 0)
{
    ending = 276
    unlock_gallery(0)
}
else
{
    if (global.gametime >= 864000)
    {
        ending = 276
        unlock_gallery(0)
    }
    if (global.gametime >= 432000 && global.gametime < 864000)
    {
        ending = 277
        unlock_gallery(1)
        unlock_gallery(0)
    }
    if (global.gametime < 432000)
    {
        ending = 278
        unlock_gallery(2)
        unlock_gallery(1)
        unlock_gallery(0)
    }
}
if (global.difficulty == 0)
    unlock_set(0)
if (global.difficulty == 1)
    unlock_set(1)
if (global.difficulty > 1)
    unlock_set(2)
widespace = (oControl.widescreen * 53)
