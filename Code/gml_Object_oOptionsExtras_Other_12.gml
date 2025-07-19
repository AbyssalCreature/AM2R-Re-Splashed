if global.shaders_compiled
{
    if (oControl.palette_number == 0)
        op[num_bwfilter].optext = get_text("ExtrasMenu", "GBoff")
    if (oControl.palette_number == 1)
        op[num_bwfilter].optext = get_text("ExtrasMenu", "GBolive")
    if (oControl.palette_number == 2)
        op[num_bwfilter].optext = get_text("ExtrasMenu", "GBblue")
    if (oControl.palette_number == 3)
        op[num_bwfilter].optext = get_text("ExtrasMenu", "GBblack")
    if (oControl.palette_number == 4)
        op[num_bwfilter].optext = get_text("ExtrasMenu", "GBred")
    if (oControl.palette_number == 5)
        op[num_bwfilter].optext = get_text("ExtrasMenu", "GBgreen")
    if (oControl.palette_number == 6)
        op[num_bwfilter].optext = get_text("ExtrasMenu", "GBcustom")
}
if (oControl.mod_earlybaby == 1)
    op[num_baby].optext = get_text("GlobalOptions", "Enabled")
else
    op[num_baby].optext = get_text("GlobalOptions", "Disabled")
if (global.mod_gamebeaten == 0)
    op[num_baby].optext = get_text("ExtrasMenu", "Locked")
if global.shaders_compiled
{
    if (oControl.msr_fusionsuit == 0)
        op[num_MSRfusion].optext = "3D"
    if (oControl.msr_fusionsuit == 1)
        op[num_MSRfusion].optext = "2D"
    if (oControl.hudoption == 0)
        op[num_hud].optext = "Visor Color"
    if (oControl.hudoption == 1)
        op[num_hud].optext = "Select Color"
    if (oControl.hudoption == 2)
        op[num_hud].optext = "Disabled"
    switch oControl.guicolor
    {
        case 1:
            op[num_color].optext = "Green"
            break
        case 2:
            op[num_color].optext = "Red"
            break
        case 3:
            op[num_color].optext = "Blue"
            break
        case 4:
            op[num_color].optext = "Yellow"
            break
        case 5:
            op[num_color].optext = "Orange"
            break
        case 6:
            op[num_color].optext = "Purple"
            break
        case 7:
            op[num_color].optext = "Pink"
            break
        case 8:
            op[num_color].optext = "White"
            break
        case 9:
            op[num_color].optext = "Canary"
            break
        case 10:
            op[num_color].optext = "Red Orange"
            break
        case 11:
            op[num_color].optext = "Sky Blue"
            break
        case 12:
            op[num_color].optext = "Gold"
            break
        case 13:
            op[num_color].optext = "Porsche"
            break
        case 14:
            op[num_color].optext = "Light Purple"
            break
        case 15:
            op[num_color].optext = "Hot Pink"
            break
        case 16:
            op[num_color].optext = "Retro Green"
            break
    }

    if (oControl.gamehud == 0)
        op[num_gamehud].optext = "False"
    if (oControl.gamehud == 1)
        op[num_gamehud].optext = "True"
}
switch oControl.palette
{
    case 0:
        op[num_palette].optext = "Color"
        break
    case 1:
        op[num_palette].optext = "Special"
        break
}

if (oControl.palette != 1)
{
    switch oControl.preferredcolor
    {
        case 1:
            op[num_suit].optext = "Green"
            break
        case 2:
            op[num_suit].optext = "Red"
            break
        case 3:
            op[num_suit].optext = "Blue"
            break
        case 4:
            op[num_suit].optext = "Yellow"
            break
        case 5:
            op[num_suit].optext = "Orange"
            break
        case 6:
            op[num_suit].optext = "Purple"
            break
        case 7:
            op[num_suit].optext = "Pink"
            break
        case 8:
            op[num_suit].optext = "White"
            break
        case 9:
            op[num_suit].optext = "Canary"
            break
        case 10:
            op[num_suit].optext = "Red Orange"
            break
        case 11:
            op[num_suit].optext = "Sky Blue"
            break
        case 12:
            op[num_suit].optext = "Gold"
            break
        case 13:
            op[num_suit].optext = "Porsche"
            break
        case 14:
            op[num_suit].optext = "Light Purple"
            break
        case 15:
            op[num_suit].optext = "Hot Pink"
            break
        case 16:
            op[num_suit].optext = "Retro Green"
            break
        case 17:
            op[num_suit].optext = "Disabled"
            break
    }

}
else if (oControl.palette == 1)
{
    switch oControl.preferredcolor
    {
        case 1:
            op[num_suit].optext = "BigBradley"
            break
        case 2:
            op[num_suit].optext = "AbyssalCreature"
            break
        case 3:
            op[num_suit].optext = "Mystical"
            break
        case 4:
            op[num_suit].optext = "The Horde"
            break
        case 5:
            op[num_suit].optext = "ssanoo"
            break
        case 6:
            op[num_suit].optext = "Lucina"
            break
        case 7:
            op[num_suit].optext = "Zed"
            break
        case 8:
            op[num_suit].optext = "Snu"
            break
        case 9:
            op[num_suit].optext = "Variable"
            break
        case 10:
            op[num_suit].optext = "DruidVorse"
            break
        case 11:
            op[num_suit].optext = "Alex87"
            break
        case 12:
            op[num_suit].optext = "Mimolette"
            break
        case 13:
            op[num_suit].optext = "Nano-Tec_2a"
            break
        case 14:
            op[num_suit].optext = "Xander"
            break
        case 15:
            op[num_suit].optext = "Kragondor"
            break
        case 16:
            op[num_suit].optext = "Steele"
            break
        case 17:
            op[num_suit].optext = "Disabled"
            break
    }

}
if (oControl.mod_IGT == 1)
    op[num_IGT].optext = get_text("GlobalOptions", "Enabled")
else
    op[num_IGT].optext = get_text("GlobalOptions", "Disabled")
if (global.mod_gamebeaten == 0)
    op[num_IGT].optext = get_text("ExtrasMenu", "Locked")
