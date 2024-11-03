if (shots > 0 && damaged == 0)
{
    event_user(2)
    shots -= 1
    knockback = 5
    alarm[2] = 20
}
else
{
    with (oTank)
        tgt_aangle = 0
}
