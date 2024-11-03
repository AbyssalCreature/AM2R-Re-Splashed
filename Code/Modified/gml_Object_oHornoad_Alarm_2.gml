alarm[2] = (200 + random(220))
if (active == 1 && state == 1 && target == 1 && y <= oCharacter.y && y >= (oCharacter.y - 32))
{
    state = 5
    image_index = 0
    canattack = 1
}
