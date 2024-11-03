var d;
d = application_get_position()
if (room != rm_transition && instance_exists(oCharacter) && global.ingame && oControl.displaygui && global.opshowhud)
    draw_surface_ext(igt_surface, (oControl.displayx - d[0]), (oControl.displayy - d[1]), oControl.display_scale, oControl.display_scale, 0, -1, 1)
