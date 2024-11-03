if surface_exists(screen_surface)
    surface_free(screen_surface)
if file_exists((working_directory + "/tempscr"))
    file_delete((working_directory + "/tempscr"))
