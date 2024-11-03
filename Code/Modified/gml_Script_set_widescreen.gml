view_visible[1] = true
view_wview[1] = (view_wview[0] + widescreen_space)
view_hview[1] = view_hview[0]
view_wport[1] = (view_wport[0] - widescreen_space)
view_hport[1] = view_hport[0]
view_xview[1] = (view_xview[0] - (widescreen_space / 2))
view_yview[1] = view_yview[0]
if (!surface_exists(widescreen_surface))
    widescreen_surface = surface_create(view_wview[1], view_hview[1])
view_surface_id[1] = widescreen_surface
