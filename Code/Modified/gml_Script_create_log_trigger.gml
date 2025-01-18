var inst, arrayHasValue, i, iLen;
if (argument[0] == 0)
{
    if (global.log[argument[1]] == 0)
    {
        inst = instance_create(argument[2], argument[3], oLogTrigger)
        with (inst)
        {
            yoffset = argument[4]
            lognum = argument[1]
            event_user(0)
            visible = argument[5]
        }
    }
}
else
{
    arrayHasValue = 0
    i = 0
    iLen = array_length_1d(global.trooperlog)
    while (i < iLen)
    {
        if (global.trooperlog[i] == argument[1])
        {
            arrayHasValue = 1
            break
        }
        else
        {
            i++
            continue
        }
    }
    if (!arrayHasValue)
    {
        inst = instance_create(argument[2], argument[3], oLogTrigger)
        with (inst)
        {
            yoffset = argument[4]
            trooperlognum = argument[1]
            event_user(0)
            visible = argument[5]
        }
    }
}
