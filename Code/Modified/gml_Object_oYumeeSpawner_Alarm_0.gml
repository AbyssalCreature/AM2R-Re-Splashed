if (distance_to_object(oCharacter) < 180 && distance_to_object(oCharacter) > 32 && instance_number(oYumee) < 3)
{
    instance_create(x, y, oYumee)
    alarm[0] = 100
}
else
    alarm[0] = 30
