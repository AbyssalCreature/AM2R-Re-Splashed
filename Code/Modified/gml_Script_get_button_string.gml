switch argument0
{
    case "Fire":
        return (("[" + get_keyname(global.opkeybtn_b)) + "]");
    case "Jump":
        return (("[" + get_keyname(global.opkeybtn_a)) + "]");
    case "Missile":
        return (("[" + get_keyname(global.opkeybtn_r)) + "]");
    case "Walk":
        return (("[" + get_keyname(global.opkeybtn_r2)) + "]");
    case "Aim":
        return (("[" + get_keyname(global.opkeybtn_l)) + "]");
    case "Aim2":
        return (("[" + get_keyname(global.opkeybtn_l2)) + "]");
    case "Select":
        return (("[" + get_keyname(global.opkeybtn_select)) + "]");
    case "Start":
        return (("[" + get_keyname(global.opkeybtn_start)) + "]");
    case "Morph":
        return (("[" + get_keyname(global.opkeybtn_x)) + "]");
    case "Down":
        return (("[" + get_keyname(global.opkeybtn_down)) + "]");
    case "Menu1":
        return (("[" + get_keyname(global.opkeybtn_menu1)) + "]");
    case "Menu2":
        return (("[" + get_keyname(global.opkeybtn_menu2)) + "]");
}

if (argument0 == "")
    return "";
