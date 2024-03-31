if (state == 0)
{
    if (statetime == interval)
    {
        currtgt += 1
        if (tgtx[currtgt] == startx && tgty[currtgt] == starty)
            currtgt = 0
        targetx = tgtx[currtgt]
        targety = tgty[currtgt]
        statetime = 0
    }
    if (stun == 0 && frozen == 0)
    {
        x = lerp(x, targetx, moveratio)
        y = lerp(y, targety, moveratio)
    }
}
if (state == 100)
{
    if (statetime == 1)
        sfx_play(sndElectricOverload)
    flashing = 10
    canbehit = 0
    if (statetime > 120)
        event_user(1)
}
if instance_exists(spark)
{
    spark.x = x
    spark.y = y
}
event_inherited()
