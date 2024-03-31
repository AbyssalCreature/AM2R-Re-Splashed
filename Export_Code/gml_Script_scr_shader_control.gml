if (oControl.palette_number > 6)
    oControl.palette_number = 0
if (oControl.palette_number < 0)
    oControl.palette_number = 6
if (oControl.palette_number == 0)
    oControl.shader_on = 0
else if (oControl.shader_on == 0)
    oControl.shader_on = 1
