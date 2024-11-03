direction = point_direction(oCharacter.x, (oCharacter.y - 16), x, y)
speed = 4
if (!sfx_isplaying(sndDeflect))
    sfx_play(sndDeflect)
if (state == 0)
    state = 1
shaking = 8
