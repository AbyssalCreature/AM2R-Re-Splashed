myposx = (x / 8)
myposy = (y / 8)
y += 32
mystr = string(global.map[myposx, myposy])
if (mystr != "0")
{
    wallU = string_char_at(mystr, 1)
    wallR = string_char_at(mystr, 2)
    wallD = string_char_at(mystr, 3)
    wallL = string_char_at(mystr, 4)
    color = string_char_at(mystr, 5)
    special = string_char_at(mystr, 6)
    make_maptile(x, y, wallU, wallR, wallD, wallL, color, special, global.dmap[myposx, myposy])
}
instance_destroy()
