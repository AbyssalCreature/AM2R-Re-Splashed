if ((view_yview[0] + view_hview[0]) >= global.waterlevel)
{
    yi = 0
    repeat amt_y
    {
        xi = 0
        repeat (amt_x + 1)
        {
            draw_background(BG, ((x + (background_get_width(BG) * xi)) + floor(((view_xview[0] * xratio) + xoff))), ((y + (background_get_height(BG) * yi)) + floor(((view_yview[0] * yratio) + yoff))))
            xi += 1
        }
        yi += 1
    }
}
