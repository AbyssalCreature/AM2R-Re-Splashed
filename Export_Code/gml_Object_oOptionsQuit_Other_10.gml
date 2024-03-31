op[50] = instance_create(x, y, oMenuLabel)
op[50].text = get_text("QuitMenu", "Exit")
op[0] = instance_create(x, (y + 16), oPauseOption)
op[0].optionid = 0
op[0].label = get_text("GlobalOptions", "Yes")
op[1] = instance_create(x, (y + 32), oPauseOption)
op[1].optionid = 1
op[1].label = get_text("GlobalOptions", "No")
