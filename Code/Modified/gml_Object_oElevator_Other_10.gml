if (oCharacter.y < (room_height / 2))
{
    y = target_top
    targety = target_bottom
    elev_dir = 0
}
else
{
    y = target_bottom
    targety = target_top
    elev_dir = 1
}
mysolid.y = y
