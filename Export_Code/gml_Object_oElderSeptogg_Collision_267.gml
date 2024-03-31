if instance_exists(oFXAnimSpark)
{
    if (oFXAnimSpark.sprite_index == sSmoke1)
    {
        with (oFXAnimSpark)
            instance_destroy()
    }
}
if (oCharacter.state != oCharacter.JUMPING)
    alarm[0] = 2
