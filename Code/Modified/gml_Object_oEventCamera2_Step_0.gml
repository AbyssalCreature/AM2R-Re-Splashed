if followplayer
{
    targetx = oCharacter.x
    targety = (oCharacter.y - 12)
}
if (x != targetx)
    x += ((targetx - x) / ratio)
if (y != targety)
    y += ((targety - y) / ratio)
