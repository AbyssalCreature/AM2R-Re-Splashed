alert("This is obsolete")
draw_background(global.qbg, view_xview[0], view_yview[0])
if (!fadeout)
{
    draw_background_ext(global.qbg, (view_xview[0] + 1), view_yview[0], 1, 1, 0, -1, 0.5)
    draw_background_ext(global.qbg, (view_xview[0] - 1), view_yview[0], 1, 1, 0, -1, 0.5)
    draw_background_ext(global.qbg, (view_xview[0] + 2), view_yview[0], 1, 1, 0, -1, 0.2)
    draw_background_ext(global.qbg, (view_xview[0] - 2), view_yview[0], 1, 1, 0, -1, 0.2)
}
if fadeout
{
    draw_background_ext(global.qbg, (view_xview[0] + 1), view_yview[0], 1, 1, 0, -1, (0.5 * ealpha))
    draw_background_ext(global.qbg, (view_xview[0] - 1), view_yview[0], 1, 1, 0, -1, (0.5 * ealpha))
    draw_background_ext(global.qbg, (view_xview[0] + 2), view_yview[0], 1, 1, 0, -1, (0.2 * ealpha))
    draw_background_ext(global.qbg, (view_xview[0] - 2), view_yview[0], 1, 1, 0, -1, (0.2 * ealpha))
}
draw_set_color(c_black)
if (!fadeout)
    draw_set_alpha(0.8)
if fadeout
    draw_set_alpha((0.8 * ealpha))
draw_rectangle(view_xview[0], view_yview[0], (view_xview[0] + 330), (view_yview[0] + 250), false)
