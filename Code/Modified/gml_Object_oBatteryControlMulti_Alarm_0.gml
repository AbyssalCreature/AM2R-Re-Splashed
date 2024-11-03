alarm[0] = 30
i = 0
repeat (5)
{
    if ((!instance_exists(obj[i])) && (!instance_exists(bot[i])) && instance_number(oBatteryExpl) == 0)
    {
        bot[i] = instance_create(botx[i], boty[i], oA5CarrierBot)
        bot[i].targetx = targetx[i]
        bot[i].targety = targety[i]
        bot[i].facing = facing[i]
    }
    i += 1
}
i = 0
repeat (5)
{
    if instance_exists(bot[i])
    {
        if (bot[i].batid != -1)
            obj[i] = bot[i].batid
    }
    i += 1
}
