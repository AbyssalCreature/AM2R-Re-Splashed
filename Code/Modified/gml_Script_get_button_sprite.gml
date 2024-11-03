if (os_type == os_android || os_type == os_linux)
{
    if (global.joydetected == 1 && global.compatibilitymode == 0)
    {
        switch argument0
        {
            case "Fire":
                return get_xjoybtnsprite(global.opxjoybtn_b);
            case "Jump":
                return get_xjoybtnsprite(global.opxjoybtn_a);
            case "Missile":
                return get_xjoybtnsprite(global.opxjoybtn_r);
            case "Walk":
                return get_xjoybtnsprite(global.opxjoybtn_r2);
            case "Aim":
                return get_xjoybtnsprite(global.opxjoybtn_l);
            case "Aim2":
                return get_xjoybtnsprite(global.opxjoybtn_l2);
            case "Select":
                return get_xjoybtnsprite(global.opxjoybtn_sel);
            case "Start":
                return get_xjoybtnsprite(global.opxjoybtn_str);
            case "Morph":
                return get_xjoybtnsprite(global.opxjoybtn_x);
            case "Menu1":
                return get_xjoybtnsprite(global.opxjoybtn_menu1);
            case "Menu2":
                return get_xjoybtnsprite(global.opxjoybtn_menu2);
            case "DPad":
                return 528;
            case "Down":
                return 530;
        }

    }
    if (global.joydetected == 0 && os_type == os_android)
    {
        switch argument0
        {
            case "Fire":
                return 1611;
            case "Jump":
                return 1609;
            case "Missile":
                return 1612;
            case "Walk":
                return 520;
            case "Aim":
                return 1613;
            case "Aim2":
                return 1614;
            case "Select":
                return 1612;
            case "Start":
                return 1615;
            case "Morph":
                return 1610;
            case "Menu1":
                return 1609;
            case "Menu2":
                return 1611;
            case "DPad":
                return 528;
            case "Down":
                return 530;
        }

    }
    else if (global.joydetected == 1)
    {
        switch argument0
        {
            case "Fire":
                return get_joybtnsprite(global.opjoybtn_b);
            case "Jump":
                return get_joybtnsprite(global.opjoybtn_a);
            case "Missile":
                return get_joybtnsprite(global.opjoybtn_r);
            case "Walk":
                return get_joybtnsprite(global.opjoybtn_r2);
            case "Aim":
                return get_joybtnsprite(global.opjoybtn_l);
            case "Aim2":
                return get_joybtnsprite(global.opjoybtn_l2);
            case "Select":
                return get_joybtnsprite(global.opjoybtn_sel);
            case "Start":
                return get_joybtnsprite(global.opjoybtn_str);
            case "Morph":
                return get_joybtnsprite(global.opjoybtn_x);
            case "Menu1":
                return get_joybtnsprite(global.opjoybtn_menu1);
            case "Menu2":
                return get_joybtnsprite(global.opjoybtn_menu2);
            case "DPad":
                return 528;
            case "Down":
                return 530;
        }

    }
}
if (global.controltype == 0)
{
    switch argument0
    {
        case "DPad":
            return 529;
        default:
            return -4;
    }

}
if (global.controltype == 1)
{
    switch argument0
    {
        case "Fire":
            return get_joybtnsprite(global.opjoybtn_b);
        case "Jump":
            return get_joybtnsprite(global.opjoybtn_a);
        case "Missile":
            return get_joybtnsprite(global.opjoybtn_r);
        case "Walk":
            return get_joybtnsprite(global.opjoybtn_r2);
        case "Aim":
            return get_joybtnsprite(global.opjoybtn_l);
        case "Aim2":
            return get_joybtnsprite(global.opjoybtn_l2);
        case "Select":
            return get_joybtnsprite(global.opjoybtn_sel);
        case "Start":
            return get_joybtnsprite(global.opjoybtn_str);
        case "Morph":
            return get_joybtnsprite(global.opjoybtn_x);
        case "Menu1":
            return get_joybtnsprite(global.opjoybtn_menu1);
        case "Menu2":
            return get_joybtnsprite(global.opjoybtn_menu2);
        case "DPad":
            return 528;
        case "Down":
            return 530;
    }

}
if (global.controltype == 2)
{
    switch argument0
    {
        case "Fire":
            return get_xjoybtnsprite(global.opxjoybtn_b);
        case "Jump":
            return get_xjoybtnsprite(global.opxjoybtn_a);
        case "Missile":
            return get_xjoybtnsprite(global.opxjoybtn_r);
        case "Walk":
            return get_xjoybtnsprite(global.opxjoybtn_r2);
        case "Aim":
            return get_xjoybtnsprite(global.opxjoybtn_l);
        case "Aim2":
            return get_xjoybtnsprite(global.opxjoybtn_l2);
        case "Select":
            return get_xjoybtnsprite(global.opxjoybtn_sel);
        case "Start":
            return get_xjoybtnsprite(global.opxjoybtn_str);
        case "Morph":
            return get_xjoybtnsprite(global.opxjoybtn_x);
        case "Menu1":
            return get_xjoybtnsprite(global.opxjoybtn_menu1);
        case "Menu2":
            return get_xjoybtnsprite(global.opxjoybtn_menu2);
        case "DPad":
            return 528;
        case "Down":
            return 530;
    }

}
if (argument0 == "")
    return -4;
