if (state == 0)
{
    if (statetime == 0)
        textpos = 1
    if (statetime < 60)
    {
        if (imgalpha < 1)
            imgalpha += 0.05
    }
    if (statetime > 880)
    {
        if (textalpha > 0)
            textalpha -= 0.05
        if (imgalpha > 0)
            imgalpha -= 0.05
    }
    if (statetime == 900)
    {
        state = 1
        statetime = 0
    }
    if (statetime < 34 || statetime >= 94)
        textpos += 0.25
}
if (state == 1)
{
    if (statetime == 0)
    {
        textpos = 1
        textalpha = 1
        drawtext = text2
        drawimg = 159
        texty = 176
    }
    if (statetime < 60)
    {
        if (imgalpha < 1)
            imgalpha += 0.05
    }
    if (statetime > 880)
    {
        if (textalpha > 0)
            textalpha -= 0.05
        if (imgalpha > 0)
            imgalpha -= 0.05
    }
    if (statetime == 900)
    {
        state = 2
        statetime = 0
    }
    textpos += 0.25
}
if (state == 2)
{
    if (statetime == 0)
    {
        textpos = 1
        textalpha = 1
        drawtext = text3
        drawimg = 160
        texty = 176
    }
    if (statetime < 60)
    {
        if (imgalpha < 1)
            imgalpha += 0.05
    }
    if (statetime > 880)
    {
        if (textalpha > 0)
            textalpha -= 0.05
        if (imgalpha > 0)
            imgalpha -= 0.05
    }
    if (statetime == 900)
        instance_destroy()
    textpos += 0.25
}
statetime += 1
