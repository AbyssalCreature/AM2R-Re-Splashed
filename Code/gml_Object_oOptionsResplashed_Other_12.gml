if (global.shaders_compiled)
{
    if (oControl.msr_fusionsuit == 0)
        op[num_MSRfusion].optext = "3D (Prime)";
    
    if (oControl.msr_fusionsuit == 1)
        op[num_MSRfusion].optext = "2D (SR, Fusion)";
    
    if (oControl.hudoption == 0)
        op[num_hud].optext = "Visor Color";
    
    if (oControl.hudoption == 1)
        op[num_hud].optext = "Select Color";
    
    if (oControl.hudoption == 2)
        op[num_hud].optext = "Disabled";
    
    switch (oControl.guicolor)
    {
        case 1:
            op[num_color].optext = "Green";
            break;
        
        case 2:
            op[num_color].optext = "Red";
            break;
        
        case 3:
            op[num_color].optext = "Blue";
            break;
        
        case 4:
            op[num_color].optext = "Yellow";
            break;
        
        case 5:
            op[num_color].optext = "Orange";
            break;
        
        case 6:
            op[num_color].optext = "Purple";
            break;
        
        case 7:
            op[num_color].optext = "Pink";
            break;
        
        case 8:
            op[num_color].optext = "White";
            break;
        
        case 9:
            op[num_color].optext = "Canary";
            break;
        
        case 10:
            op[num_color].optext = "Red Orange";
            break;
        
        case 11:
            op[num_color].optext = "Sky Blue";
            break;
        
        case 12:
            op[num_color].optext = "Gold";
            break;
        
        case 13:
            op[num_color].optext = "Porsche";
            break;
        
        case 14:
            op[num_color].optext = "Light Purple";
            break;
        
        case 15:
            op[num_color].optext = "Hot Pink";
            break;
        
        case 16:
            op[num_color].optext = "Retro Green";
            break;
    }
    
    if (oControl.gamehud == 0)
        op[num_gamehud].optext = "False";
    
    if (oControl.gamehud == 1)
        op[num_gamehud].optext = "True";
}

if (oControl.omegaEnabled == 0)
    op[num_omega].optext = "Disabled";

if (oControl.omegaEnabled == 1)
    op[num_omega].optext = "Enabled";
