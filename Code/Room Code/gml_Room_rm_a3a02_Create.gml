global.mapoffsetx = 64
global.mapoffsety = 21
global.waterlevel = 0
global.save_room = 10
global.floormaterial = 4
instance_create(512, 208, scr_itemsopen(oControl.mod_203))
if (instance_number(oCharacter) > 0)
    mus_change(musArea3A)
else
    oMusicV2.currentbgm = 268
