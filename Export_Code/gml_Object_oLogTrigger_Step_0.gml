var xx, yy;
if (place_meeting(x, y, oCharacter) || sprite_index == sLogFadeMarker)
{
    if (sprite_index != sLogFadeMarker)
        sprite_index = sLogLoadMarker
    xx = oCharacter.x
    if (oCharacter.state == oCharacter.BALL)
        yy = (oCharacter.y - 21)
    else if (oCharacter.state == oCharacter.DUCKING)
        yy = (oCharacter.y - 29)
    else
        yy = (oCharacter.y - 40)
    if (sprite_index != sLogFadeMarker && point_distance(drawx, drawy, xx, yy) > 1)
        image_speed = 0
    else
        image_speed = 0.13
    if (sprite_index == sLogFadeMarker)
        image_speed = 0.5
}
else
{
    if (sprite_index != sLogFadeMarker)
    {
        sprite_index = sLogHintMarker
        image_speed = 0.5
    }
    xx = x
    yy = (y + yoffset)
}
drawx = lerp(drawx, xx, 0.13)
drawy = lerp(drawy, yy, 0.13)
