draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(x, y, (x - w), ((y + h) + 1), false)
draw_set_alpha(1)
draw_line(x, y, x, (y + h))
draw_background_ext(bgSaveSlotLine2, ((x - w) - 4), y, 1, (h + 2), 0, mycolor, 1)
draw_background_ext(bgSaveSlotLine1, (x - w), ((y + h) + 0), (w + 1), 1, 0, mycolor, 1)
if oControl.mod_usemanualseed
{
    draw_set_halign(fa_right)
    draw_set_color(c_white)
    draw_set_font(global.fontGUI2)
    draw_cool_text(x, (y - 30), ((get_text("GameplayMenu", "CustomSeed") + ": ") + string(oControl.mod_seed)), c_black, c_white, c_silver, (h / targeth))
}
