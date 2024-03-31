if (special == 0)
{
    state = (!state)
    alarm[0] = 132
    if (state == 1)
    {
        with (oA3AssemblyControl)
            alarm[3] = 1
    }
}
else
{
    if instance_exists(oAutoadPlayer)
    {
        if (state == 0)
        {
            state = 1
            with (oA3AssemblyControl)
                alarm[3] = 1
        }
    }
    else
        state = 0
    alarm[0] = 30
}
