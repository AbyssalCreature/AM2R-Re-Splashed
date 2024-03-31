if (distance_to_object(oCharacter) < 80)
{
    alarm[3] = 20
    if instance_exists(lure)
    {
        lure.image_index = 0
        switch image_angle
        {
            case 270:
            case 90:
                lure.sprite_index = skorp_get_lure(sSkorpLureUpV)
                break
            default:
                lure.sprite_index = skorp_get_lure(sSkorpLureV)
                break
        }

    }
}
else
    alarm[0] = 10
