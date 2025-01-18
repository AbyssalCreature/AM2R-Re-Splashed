if (oCharacter.state == 23 || oCharacter.state == 24)
{
    sx[10] = sx[9]
    sx[9] = sx[8]
    sx[8] = sx[7]
    sx[7] = sx[6]
    sx[6] = sx[5]
    sx[5] = sx[4]
    sx[4] = sx[3]
    sx[3] = sx[2]
    sx[2] = sx[1]
    sx[1] = sx[0]
    sx[0] = x
    sy[10] = sy[9]
    sy[9] = sy[8]
    sy[8] = sy[7]
    sy[7] = sy[6]
    sy[6] = sy[5]
    sy[5] = sy[4]
    sy[4] = sy[3]
    sy[3] = sy[2]
    sy[2] = sy[1]
    sy[1] = sy[0]
    sy[0] = y
    x = oCharacter.x
    y = oCharacter.y
    switch oControl.mod_fusion
    {
        case 1:
            if (oControl.msr_fusionsuit == 1)
            {
                if (global.currentsuit == 0)
                    image_blend = make_color_rgb(oControl.Trail_P_R_F_SR, oControl.Trail_P_G_F_SR, oControl.Trail_P_B_F_SR)
            }
            else if (global.currentsuit == 0)
                image_blend = make_color_rgb(oControl.Trail_P_R_F, oControl.Trail_P_G_F, oControl.Trail_P_B_F)
            if (oControl.msr_fusionsuit == 1)
            {
                if (global.currentsuit == 1)
                    image_blend = make_color_rgb(oControl.Trail_V_R_F_SR, oControl.Trail_V_G_F_SR, oControl.Trail_V_B_F_SR)
            }
            else if (global.currentsuit == 1)
                image_blend = make_color_rgb(oControl.Trail_V_R_F, oControl.Trail_V_G_F, oControl.Trail_V_B_F)
            if (oControl.msr_fusionsuit == 1)
            {
                if (global.currentsuit == 2)
                    image_blend = make_color_rgb(oControl.Trail_G_R_F_SR, oControl.Trail_G_G_F_SR, oControl.Trail_G_B_F_SR)
            }
            else if (global.currentsuit == 2)
                image_blend = make_color_rgb(oControl.Trail_G_R_F, oControl.Trail_G_G_F, oControl.Trail_G_B_F)
            break
        default:
            if (global.currentsuit == 0)
                image_blend = make_color_rgb(oControl.Trail_P_R, oControl.Trail_P_G, oControl.Trail_P_B)
            if (global.currentsuit == 1)
                image_blend = make_color_rgb(oControl.Trail_V_R, oControl.Trail_V_G, oControl.Trail_V_B)
            if (global.currentsuit == 2)
                image_blend = make_color_rgb(oControl.Trail_G_R, oControl.Trail_G_G, oControl.Trail_G_B)
            break
    }

}
else
    instance_destroy()
