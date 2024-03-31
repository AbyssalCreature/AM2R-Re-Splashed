var spr, area;
spr = argument0
area = (string_char_at(room_get_name(room), 5) + string_char_at(room_get_name(room), 6))
switch area
{
    case "6a":
        return asset_get_index((sprite_get_name(spr) + "A6"));
    case "6b":
        return asset_get_index((sprite_get_name(spr) + "A6b"));
    default:
        return spr;
}

