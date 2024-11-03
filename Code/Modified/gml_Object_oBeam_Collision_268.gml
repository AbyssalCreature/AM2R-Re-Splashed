if (wbeam == 0)
{
    event_user(0)
    instance_destroy()
}
with (other.id)
{
    if (sprite_index == sBlockBomb)
    {
        event_user(1)
        visible = true
    }
}
