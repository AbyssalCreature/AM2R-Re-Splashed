if active
    draw_txt_1button((view_xview[0] + 2), (view_yview[0] + 225), tip1text, 1, "Menu1", image_alpha)
else
{
    draw_txt_1button((view_xview[0] + 2), (view_yview[0] + 212), tip1text, 1, "Menu1", image_alpha)
    draw_txt_1button((view_xview[0] + 2), (view_yview[0] + 225), tip2text, 1, "Menu2", image_alpha)
}
