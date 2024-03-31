if (parent == -1 && scavenge == -1)
{
    if (distance_to_object(oCharacter) < 48)
        instance_destroy()
    if (distance_to_object(oEnemy) < 16)
        instance_destroy()
    if (distance_to_object(oMEgg1) < 48)
        instance_destroy()
    if (distance_to_object(oMEgg2) < 48)
        instance_destroy()
    if (distance_to_object(oMEgg2A) < 48)
        instance_destroy()
}
