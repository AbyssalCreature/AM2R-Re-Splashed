var brightness;
brightness = 0.8
if instance_exists(oPBombExpl)
    brightness = (0.8 * (1 - (oPBombExpl.image_alpha * (1 - (oPBombExpl.alpha2 * 0.2)))))
if (global.darkness > 0 && eye_glow)
{
    switch sprite_index
    {
        case sSeptogg_tlRock5A:
            draw_sprite_ext(sSeptoggEyes, 1, x, y, 1, 1, 0, c_white, brightness)
            break
        case 1537:
            draw_sprite_ext(sSeptoggEyes, 2, x, y, 1, 1, 0, c_white, brightness)
            break
        case 1533:
            draw_sprite_ext(sSeptoggEyes, 2, x, y, 1, 1, 0, c_white, brightness)
            break
        default:
            draw_sprite_ext(sSeptoggEyes, 0, x, y, 1, 1, 0, c_white, brightness)
    }

}
