alarm[0] = 60
if (instance_number(oBattery) == 0 && instance_number(oA5CarrierBot) == 0 && instance_number(oBatteryExpl) == 0)
{
    bot = instance_create(bot_x, bot_y, oA5CarrierBot)
    bot.targetx = targetx
    bot.targety = targety
    bot.facing = facing
}
