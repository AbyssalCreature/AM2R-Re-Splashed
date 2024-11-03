global.mapoffsetx = 69
global.mapoffsety = 27
global.watertype = 0
global.waterlevel = 0
global.floormaterial = 4
SoundFX_Preset(1)
instance_create(888, 320, scr_itemsopen(oControl.mod_207))
instance_create(1200, 192, scr_itemsopen(oControl.mod_208))
if (oControl.mod_purerandombool == 1 || oControl.mod_splitrandom == 1)
{
    if (global.maxpbombs < 2)
    {
        with (118465)
            instance_destroy()
    }
}
