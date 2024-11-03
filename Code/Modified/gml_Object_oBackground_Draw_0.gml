var xoffw;
xoffw = 0
for (i = 0; i < bgno; i += 1)
{
    if (bgid[i] != bgScreenGuide)
    {
        if oControl.widescreen
        {
            if (tile[i] == 1)
                draw_background_tiled_ext(bgid[i], floor((((view_xview[1] * xratio[i]) + xoff[i]) + xoffw)), floor(((view_yview[1] * yratio[i]) + yoff[i])), xscale[i], yscale[i], -1, alpha[i])
            else
                draw_background_ext(bgid[i], floor(((view_xview[1] * xratio[i]) + xoff[i])), floor(((view_yview[1] * yratio[i]) + yoff[i])), xscale[i], yscale[i], 0, -1, alpha[i])
        }
        else if (tile[i] == 1)
        {
            if (bgid[i] == bgA5Outside)
                xoffw = -64
            else
                xoffw = 0
            draw_background_tiled_ext(bgid[i], floor((((view_xview[0] * xratio[i]) + xoff[i]) + xoffw)), floor(((view_yview[0] * yratio[i]) + yoff[i])), xscale[i], yscale[i], -1, alpha[i])
        }
        else
        {
            if (bgid[i] == bgA7Cave)
                xoffw = -48
            else
                xoffw = 0
            draw_background_ext(bgid[i], floor((((view_xview[0] * xratio[i]) + xoff[i]) + xoffw)), floor(((view_yview[0] * yratio[i]) + yoff[i])), xscale[i], yscale[i], 0, -1, alpha[i])
        }
    }
}
