var drawX, drawY, suit, hijump, ice, plasma, wave, spazer, fusion, suitframe;
draw_set_alpha(1)
drawX = 7
drawY = 53
suit = ""
hijump = ""
ice = ""
plasma = ""
wave = ""
spazer = ""
fusion = ""
suitframe = 0
if (oControl.mod_fusion == 0)
{
    if (global.currentsuit == 0)
        suitframe = 0
    else if (global.currentsuit == 1)
        suitframe = 2
    else if (global.currentsuit == 2)
        suitframe = 4
    if (global.hijump == 1)
        suitframe += 1
    if (oControl.msr_fusionsuit == 0)
        suitframe += 14
}
if (oControl.mod_fusion == 1)
{
    fusion = "F"
    drawX -= 2
    drawY += 3
    if (global.currentsuit == 0)
        suitframe = 6
    if (global.currentsuit == 1)
        suitframe = 7
    if (global.currentsuit == 2)
        suitframe = 10
    if global.ibeam
        suitframe = 11
    if (oControl.msr_fusionsuit == 0)
        suitframe += 2
}
if global.sbeam
    spazer = "S"
if global.wbeam
{
    drawX -= 1
    wave = "W"
}
if global.pbeam
    plasma = "P"
if global.ibeam
    ice = "I"
if (global.currentsuit == 1)
    suit = "V"
if (global.currentsuit == 2)
    suit = "G"
if (global.ibeam && oControl.mod_fusion)
    suit = "O"
cannon = asset_get_index(((((((("s" + fusion) + suit) + "Cannon") + spazer) + wave) + plasma) + ice))
draw_sprite_ext(sSubScrPlayer, suitframe, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha)
draw_sprite_ext(cannon, 0, (x + drawX - 51), (y + drawY), 1, 1, 0, -1, oSubscreenMenu.ealpha)
