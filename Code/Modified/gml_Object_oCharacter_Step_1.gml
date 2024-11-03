if activation_code
{
    instance_activate_region((view_xview[0] - 300), (view_yview[0] - 300), (view_wview[0] + 600), (view_hview[0] + 600), true)
    if global.objdeactivate
        instance_deactivate_object(oSolid)
    instance_activate_object(oMovingSolid)
    if global.objdeactivate
        instance_deactivate_object(oEnemy)
    instance_deactivate_object(oGotoRoom)
    instance_activate_region((view_xview[0] - 200), (view_yview[0] - 200), (view_wview[0] + 400), (view_hview[0] + 400), true)
    instance_activate_region((x - 64), (y - 64), 128, 128, true)
    instance_activate_object(oGravitt)
    activation_code = 0
}
