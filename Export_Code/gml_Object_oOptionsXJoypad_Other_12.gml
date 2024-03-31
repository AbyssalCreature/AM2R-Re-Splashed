if global.opxjoyvib
    op[0].optext = get_text("GlobalOptions", "Yes")
else
    op[0].optext = get_text("GlobalOptions", "No")
op[1].slwidth = ((global.opxjoydz / 100) * op[1].w)
if global.opanalogwalk
    op[2].optext = get_text("GlobalOptions", "Enabled")
else
    op[2].optext = get_text("GlobalOptions", "Disabled")
op[3].optext = get_xjoybtnname(global.opxjoybtn_a)
op[4].optext = get_xjoybtnname(global.opxjoybtn_b)
op[5].optext = get_xjoybtnname(global.opxjoybtn_l)
op[6].optext = get_xjoybtnname(global.opxjoybtn_l2)
op[7].optext = get_xjoybtnname(global.opxjoybtn_r2)
op[8].optext = get_xjoybtnname(global.opxjoybtn_x)
op[9].optext = get_xjoybtnname(global.opxjoybtn_r)
op[10].optext = get_xjoybtnname(global.opxjoybtn_sel)
op[11].optext = get_xjoybtnname(global.opxjoybtn_str)
op[12].optext = get_xjoybtnname(global.opxjoybtn_menu1)
op[13].optext = get_xjoybtnname(global.opxjoybtn_menu2)
