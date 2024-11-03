op[1].slwidth = ((global.opsoundvolume / 100) * op[1].w)
op[2].slwidth = ((global.opmusicvolume / 100) * op[1].w)
if oControl.mod_lowhealthwarning
    op[3].optext = get_text("GlobalOptions", "Enabled")
else
    op[3].optext = get_text("GlobalOptions", "Disabled")
