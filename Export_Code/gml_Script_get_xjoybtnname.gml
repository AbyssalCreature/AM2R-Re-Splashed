switch oControl.mod_buttonsconfig
{
    case 1:
        return scr_controller_ps(argument0);
    case 2:
    case 3:
        return scr_controller_N(argument0);
    default:
        return scr_controller_xbox(argument0);
}

