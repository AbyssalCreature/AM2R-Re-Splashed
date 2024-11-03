if (distance_to_object(oCharacter) < 180 && distance_to_object(oCharacter) > 32 && instance_number(oSkreek) < 3)
{
    instance_create(x, y, oSkreek)
    alarm[0] = 120
}
else
    alarm[0] = 30
