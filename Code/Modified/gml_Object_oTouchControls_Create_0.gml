var surf, spr;
scale = oControl.touch_scale
device_mouse_dbclick_enable(false)
device_screen_size = sqrt((power((display_get_width() / display_get_dpi_x()), 2) + power((display_get_height() / display_get_dpi_y()), 2)))
draw = 1
alpha = 0
st_radius = (display_get_height() / oControl.touch_scale)
st_offset = (st_radius + 25)
gui_x[0] = st_offset
gui_y[0] = (display_get_height() - st_offset)
gui_x[1] = (display_get_width() - st_offset)
gui_y[1] = (display_get_height() - st_offset)
stick_x[0] = gui_x[0]
stick_y[0] = gui_y[0]
stick_x[1] = gui_x[1]
stick_y[1] = gui_y[1]
st_pressed[0] = -1
st_pressed[1] = -1
jump_pressed[0] = -1
jump_pressed[1] = -1
fire_pressed[0] = -1
fire_pressed[1] = -1
aimupleft_pressed[0] = -1
aimupleft_pressed[1] = -1
aimdownleft_pressed[0] = -1
aimdownleft_pressed[1] = -1
aimupright_pressed[0] = -1
aimupright_pressed[1] = -1
aimdownright_pressed[0] = -1
aimdownright_pressed[1] = -1
missile_pressed[0] = -1
missile_pressed[1] = -1
morph_pressed[0] = -1
morph_pressed[1] = -1
pause_pressed[0] = -1
pause_pressed[1] = -1
up_pressed[0] = -1
up_pressed[1] = -1
down_pressed[0] = -1
down_pressed[1] = -1
right_pressed[0] = -1
right_pressed[1] = -1
left_pressed[0] = -1
left_pressed[1] = -1
vdir = 0
vdist = 0
rdist = 0
mx = 0
my = 0
joyx = 0
joyy = 0
gui_x[0] = st_offset
gui_y[0] = (display_get_gui_height() - st_offset)
gui_x[1] = (display_get_gui_width() - st_offset)
gui_y[1] = (display_get_gui_height() - st_offset)
btn_width = (display_get_height() / oControl.touch_scale)
btn_height = (display_get_height() / oControl.touch_scale)
btn_y = ((display_get_gui_height() - btn_height) - 25)
btn_x = (display_get_gui_width() - 25)
btn_jump_x = (btn_x - (btn_width * 2))
btn_fire_x = (btn_x - btn_width)
btn_missile_x = btn_jump_x
btn_missile_y = (btn_y - btn_height)
btn_morph_x = btn_fire_x
btn_morph_y = (btn_y - btn_height)
btn_pause_x = mean((gui_x[0] + st_radius), btn_jump_x)
btn_pause_y = (gui_y[1] + st_radius)
buttonScale = (((150 * btn_width) / 300) / 150)
pauseScale = ((((50 * btn_height) / 3) / 85) / 50)
btn_jump[0] = btn_jump_x
btn_jump[1] = (btn_y + 10)
btn_jump[2] = ((btn_jump_x + btn_width) - 10)
btn_jump[3] = (btn_y + btn_height)
btn_fire[0] = (btn_fire_x + 10)
btn_fire[1] = (btn_y + 10)
btn_fire[2] = (btn_fire_x + btn_width)
btn_fire[3] = (btn_y + btn_height)
btn_missile[0] = btn_missile_x
btn_missile[1] = btn_missile_y
btn_missile[2] = ((btn_missile_x + btn_width) - 10)
btn_missile[3] = ((btn_missile_y + btn_height) - 10)
btn_morph[0] = (btn_morph_x + 10)
btn_morph[1] = btn_morph_y
btn_morph[2] = (btn_morph_x + btn_width)
btn_morph[3] = ((btn_morph_y + btn_height) - 10)
btn_pause[0] = (btn_pause_x - (btn_width / 4))
btn_pause[1] = (btn_pause_y - (btn_height / 3))
btn_pause[2] = (btn_pause_x + (btn_width / 4))
btn_pause[3] = btn_pause_y
btn_pausearrow_y = (btn_pause_y - ((btn_height / 3) / 2))
btn_aimul[0] = (gui_x[0] - st_radius)
btn_aimul[1] = (gui_y[0] - st_radius)
btn_aimul[2] = ((gui_x[0] - st_radius) + (st_radius / 2))
btn_aimul[3] = (gui_y[0] - st_radius)
btn_aimul[4] = (gui_x[0] - st_radius)
btn_aimul[5] = ((gui_y[0] - st_radius) + (st_radius / 2))
btn_aimdl[0] = (gui_x[0] - st_radius)
btn_aimdl[1] = (gui_y[0] + st_radius)
btn_aimdl[2] = ((gui_x[0] - st_radius) + (st_radius / 2))
btn_aimdl[3] = (gui_y[0] + st_radius)
btn_aimdl[4] = (gui_x[0] - st_radius)
btn_aimdl[5] = ((gui_y[0] + st_radius) - (st_radius / 2))
btn_aimur[0] = (gui_x[0] + st_radius)
btn_aimur[1] = (gui_y[0] - st_radius)
btn_aimur[2] = ((gui_x[0] + st_radius) - (st_radius / 2))
btn_aimur[3] = (gui_y[0] - st_radius)
btn_aimur[4] = (gui_x[0] + st_radius)
btn_aimur[5] = ((gui_y[0] - st_radius) + (st_radius / 2))
btn_aimdr[0] = (gui_x[0] + st_radius)
btn_aimdr[1] = (gui_y[0] + st_radius)
btn_aimdr[2] = ((gui_x[0] + st_radius) - (st_radius / 2))
btn_aimdr[3] = (gui_y[0] + st_radius)
btn_aimdr[4] = (gui_x[0] + st_radius)
btn_aimdr[5] = ((gui_y[0] + st_radius) - (st_radius / 2))
btn_aimu[0] = gui_x[0]
btn_aimu[1] = (gui_y[0] - (st_radius / 4))
btn_aimu[2] = (gui_x[0] - st_radius)
btn_aimu[3] = (gui_y[0] - st_radius)
btn_aimu[4] = (gui_x[0] + st_radius)
btn_aimu[5] = (gui_y[0] - st_radius)
btn_aimd[0] = gui_x[0]
btn_aimd[1] = (gui_y[0] + (st_radius / 4))
btn_aimd[2] = (gui_x[0] - st_radius)
btn_aimd[3] = (gui_y[0] + st_radius)
btn_aimd[4] = (gui_x[0] + st_radius)
btn_aimd[5] = (gui_y[0] + st_radius)
btn_aimr[0] = (gui_x[0] + (st_radius / 4))
btn_aimr[1] = gui_y[0]
btn_aimr[2] = (gui_x[0] + st_radius)
btn_aimr[3] = (gui_y[0] + st_radius)
btn_aimr[4] = (gui_x[0] + st_radius)
btn_aimr[5] = (gui_y[0] - st_radius)
btn_aiml[0] = (gui_x[0] - (st_radius / 4))
btn_aiml[1] = gui_y[0]
btn_aiml[2] = (gui_x[0] - st_radius)
btn_aiml[3] = (gui_y[0] + st_radius)
btn_aiml[4] = (gui_x[0] - st_radius)
btn_aiml[5] = (gui_y[0] - st_radius)
btn_uparrow[0] = gui_x[0]
btn_uparrow[1] = (gui_y[0] - (st_radius / 1.25))
btn_uparrow[2] = (gui_x[0] + (st_radius / 4))
btn_uparrow[3] = (gui_y[0] - (st_radius / 2))
btn_uparrow[4] = (gui_x[0] - (st_radius / 4))
btn_uparrow[5] = (gui_y[0] - (st_radius / 2))
btn_downarrow[0] = gui_x[0]
btn_downarrow[1] = (gui_y[0] + (st_radius / 1.25))
btn_downarrow[2] = (gui_x[0] + (st_radius / 4))
btn_downarrow[3] = (gui_y[0] + (st_radius / 2))
btn_downarrow[4] = (gui_x[0] - (st_radius / 4))
btn_downarrow[5] = (gui_y[0] + (st_radius / 2))
btn_leftarrow[0] = (gui_x[0] - (st_radius / 1.25))
btn_leftarrow[1] = gui_y[0]
btn_leftarrow[2] = (gui_x[0] - (st_radius / 2))
btn_leftarrow[3] = (gui_y[0] - (st_radius / 4))
btn_leftarrow[4] = (gui_x[0] - (st_radius / 2))
btn_leftarrow[5] = (gui_y[0] + (st_radius / 4))
btn_rightarrow[0] = (gui_x[0] + (st_radius / 1.25))
btn_rightarrow[1] = gui_y[0]
btn_rightarrow[2] = (gui_x[0] + (st_radius / 2))
btn_rightarrow[3] = (gui_y[0] - (st_radius / 4))
btn_rightarrow[4] = (gui_x[0] + (st_radius / 2))
btn_rightarrow[5] = (gui_y[0] + (st_radius / 4))
texture_set_interpolation(true)
surf = -1
if (!surface_exists(surf))
    surf = surface_create((300 * buttonScale), (300 * buttonScale))
surface_set_target(surf)
draw_clear_alpha(c_black, 0)
draw_sprite_ext(sTouchButtonX, 0, (surface_get_width(surf) / 2), (surface_get_height(surf) / 2), buttonScale, buttonScale, 0, c_white, 1)
surface_reset_target()
spr = sprite_create_from_surface(surf, 0, 0, surface_get_width(surf), surface_get_height(surf), false, false, (surface_get_width(surf) / 2), (surface_get_height(surf) / 2))
sprite_assign(sTouchButtonX, spr)
sprite_delete(spr)
surface_set_target(surf)
draw_clear_alpha(c_black, 0)
draw_sprite_ext(sTouchButtonS, 0, (surface_get_width(surf) / 2), (surface_get_height(surf) / 2), buttonScale, buttonScale, 0, c_white, 1)
surface_reset_target()
spr = sprite_create_from_surface(surf, 0, 0, surface_get_width(surf), surface_get_height(surf), false, false, (surface_get_width(surf) / 2), (surface_get_height(surf) / 2))
sprite_assign(sTouchButtonS, spr)
sprite_delete(spr)
surface_set_target(surf)
draw_clear_alpha(c_black, 0)
draw_sprite_ext(sTouchButtonC, 0, (surface_get_width(surf) / 2), (surface_get_height(surf) / 2), buttonScale, buttonScale, 0, c_white, 1)
surface_reset_target()
spr = sprite_create_from_surface(surf, 0, 0, surface_get_width(surf), surface_get_height(surf), false, false, (surface_get_width(surf) / 2), (surface_get_height(surf) / 2))
sprite_assign(sTouchButtonC, spr)
sprite_delete(spr)
surface_set_target(surf)
draw_clear_alpha(c_black, 0)
draw_sprite_ext(sTouchButtonT, 0, (surface_get_width(surf) / 2), (surface_get_height(surf) / 2), buttonScale, buttonScale, 0, c_white, 1)
surface_reset_target()
spr = sprite_create_from_surface(surf, 0, 0, surface_get_width(surf), surface_get_height(surf), false, false, (surface_get_width(surf) / 2), (surface_get_height(surf) / 2))
sprite_assign(sTouchButtonT, spr)
sprite_delete(spr)
surface_free(surf)
if (!surface_exists(surf))
    surf = surface_create((85 * pauseScale), (85 * pauseScale))
surface_set_target(surf)
draw_clear_alpha(c_black, 0)
draw_sprite_ext(sTouchButtonPause, 0, (surface_get_width(surf) / 2), (surface_get_height(surf) / 2), pauseScale, pauseScale, 0, c_white, 1)
surface_reset_target()
spr = sprite_create_from_surface(surf, 0, 0, surface_get_width(surf), surface_get_height(surf), false, false, (surface_get_width(surf) / 2), (surface_get_height(surf) / 2))
sprite_assign(sTouchButtonPause, spr)
sprite_delete(spr)
surface_free(surf)
texture_set_interpolation(false)
