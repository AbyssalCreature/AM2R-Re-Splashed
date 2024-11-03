if (oControl.mod_usemanualseed == 1)
    op[num_useSeed].optext = get_text("GlobalOptions", "Yes")
else
    op[num_useSeed].optext = get_text("GlobalOptions", "No")
op[num_seed].optext = seed
if (oControl.mod_insanitymode == 1)
    op[num_insanity].optext = get_text("GlobalOptions", "Enabled")
else
    op[num_insanity].optext = get_text("GlobalOptions", "Disabled")
if (oControl.mod_monstersextremecheck == 1)
    op[num_elm].optext = get_text("GlobalOptions", "Enabled")
else
    op[num_elm].optext = get_text("GlobalOptions", "Disabled")
