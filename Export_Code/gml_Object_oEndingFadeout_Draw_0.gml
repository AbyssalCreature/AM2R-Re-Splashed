draw_set_alpha(fadeAlpha)
draw_rectangle_colour((0 - (oControl.widescreen_space / 2)), 0, (room_width + oControl.widescreen_space), room_height, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)
draw_set_halign(fa_center)
if unlockmessage
    draw_cool_text_transformed((room_width / 2), ((room_height / 2) - 16), get_text("Misc", "FusionUnlock"), c_black, c_yellow, c_orange, unlockalpha, 2)
