with (other.id)
{
    if (sprite_index == sBlockScrew || sprite_index == sBlockPBomb || sprite_index == sBlockMissile || sprite_index == sBlockSMissile || sprite_index == sBlockSpeed || sprite_index == sBlockStep)
    {
        event_user(1)
        visible = true
    }
}
