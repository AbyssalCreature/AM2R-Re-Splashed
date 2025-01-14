if (myid != 0)
{
    repeat (3)
    {
        if (mirror == -1)
            xscale = -1
        else
            xscale = 1
        index = round(random(2))
        alpha = (1 + (fxtimer * 0.1))
        blend = make_color_rgb((50 + random(200)), 255, (50 + random(200)))
        if (random(10) < 1)
            blend = c_white
        if (random(10) < 5)
            xscale = -1
        else
            xscale = 1
        if (random(10) < 5)
            yscale = -1
        else
            yscale = 1
        draw_set_blend_mode(bm_add)
        if sax
            blend = make_color_rgb(40, 160, 40)
        draw_sprite_ext(sScrewSpark, index, x, (y - 15), xscale, yscale, direction, blend, alpha)
        draw_set_blend_mode(bm_normal)
    }
}
