op[1].slwidth = ((global.opdeadzone / 100) * op[1].w)
if global.opanalogwalk
    op[2].optext = get_text("GlobalOptions", "Enabled")
else
    op[2].optext = get_text("GlobalOptions", "Disabled")
if (os_type == os_android)
{
    if global.opanalog_stick
        op[3].optext = get_text("Buttons", "Right")
    else
        op[3].optext = get_text("Buttons", "Left")
    if global.opanalog_invert
        op[4].optext = get_text("GlobalOptions", "Enabled")
    else
        op[4].optext = get_text("GlobalOptions", "Disabled")
}
else
{
    op[3].optext = get_joyaxisname(global.opjoybtn_xax)
    op[4].optext = get_joyaxisname(global.opjoybtn_yax)
}
if global.dpad_rebind
    op[5].optext = get_text("GlobalOptions", "Enabled")
else
    op[5].optext = get_text("GlobalOptions", "Disabled")
op[6].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_padu))
op[7].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_padd))
op[8].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_padl))
op[9].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_padr))
op[10].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_a))
op[11].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_b))
op[12].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_l))
op[13].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_l2))
op[14].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_r2))
op[15].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_x))
op[16].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_r))
op[17].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_sel))
op[18].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_str))
op[19].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_menu1))
op[20].optext = ((get_text("Buttons", "Button") + " ") + string(global.opjoybtn_menu2))
