var tile, type, room_num;
tile = get_ground_tile(argument0, argument1)
type = -1
if (tile != -1)
{
    switch tile_get_background(tile)
    {
        case 4:
            type = 1540
            break
        case 26:
            type = 1538
            break
        case 6:
            type = 1541
            break
        case 43:
            type = 1539
            break
        case 8:
            room_num = real(string((string_char_at(room_get_name(room), 7) + string_char_at(room_get_name(room), 8))))
            if (room_num >= 16 && room_num <= 23)
            {
                if (irandom(99) < 15)
                    type = 1533
                else
                    type = 1537
            }
            else
                type = 1542
            break
        case 9:
            type = 1543
            break
        case 44:
            type = 1534
            break
        case 11:
            type = 1544
            break
        case 12:
            type = 1545
            break
        case 14:
            type = 1546
            break
        case 81:
            type = 1547
            break
        case 87:
            type = 1548
            break
        case 92:
            type = 1549
            break
        case 83:
            type = 1535
            break
        case 84:
            type = 1536
            break
        case 19:
            type = 1550
            break
        case 16:
            type = 1532
            break
        case 18:
            type = 1553
            break
        case 17:
            type = 1552
            break
    }

}
return type;
