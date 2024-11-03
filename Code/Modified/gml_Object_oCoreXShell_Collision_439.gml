with (other.id)
{
    event_user(1)
    if (!pbeam)
        instance_destroy()
}
if (alarm[1] == -1)
    alarm[1] = 30
