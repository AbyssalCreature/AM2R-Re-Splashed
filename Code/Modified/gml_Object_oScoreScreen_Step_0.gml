var j;
if (state == 0)
{
    if (playerx != playertgtx)
        playerx = lerp(playerx, playertgtx, 0.02)
    if (bgx != bgtgtx)
        bgx = lerp(bgx, bgtgtx, 0.02)
    glow1x = (playerx + 17)
    glow2x = (playerx + 79)
    glow3x = (playerx + 67)
    glow4x = playerx
    if (statetime > 200)
    {
        if (tx1_alpha < 1)
            tx1_alpha += 0.05
    }
    if (statetime > 300)
    {
        if (tx2_alpha < 1)
            tx2_alpha += 0.05
    }
    if (statetime > 120 && statetime < 1000 && (oControl.kMenu1 || oControl.kMenu2 || oControl.kStart))
    {
    }
    if (statetime > 1000)
    {
        if (walpha < 1)
            walpha += 0.01
        else
        {
            state = 1
            statetime = 0
            tx1_alpha = 0
        }
    }
    i += 0.02
    if (i > 99999999)
        i = 0
    j = (0.02 + abs(sin(i)))
    if (j > 1)
        j = 1
    glow_alpha = j
}
if (state == 1)
{
    if (statetime > 300 && statetime < 1000 && (oControl.kMenu1 || oControl.kMenu2 || oControl.kStart))
        statetime = 1000
    if (statetime > 180)
    {
        if (tx1_alpha < 1)
            tx1_alpha += 0.05
    }
    if (statetime > 1000)
    {
        if (fadeout == 0)
            fadeout = 1
    }
    if (statetime == 1300)
    {
        state = 2
        statetime = 0
        tx1_alpha = 0
        tx2_alpha = 0
        ralpha = 0
        fadeout = 0
    }
    if fadeout
    {
        if (ralpha < 1)
            ralpha += 0.01
    }
    if (walpha > 0)
        walpha -= 0.01
}
if (state == 2)
{
    if (statetime > 0)
    {
        if (tx1_alpha < 1)
            tx1_alpha += 0.05
    }
    if (statetime > 350)
    {
        if (tx2_alpha < 1)
            tx2_alpha += 0.05
    }
    if (statetime == 60)
        sfx_play(sndTLM)
    if (statetime == 600)
        fadeout = 1
    if (statetime == 900)
        event_user(0)
    if fadeout
    {
        if (ralpha < 1)
            ralpha += 0.01
    }
}
statetime += 1
