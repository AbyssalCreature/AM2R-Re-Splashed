if expanded
{
    event_user(0)
    targetx = (((view_wview[0] / 2) + 150) + (3 * (widescreen_space / 2)))
    oSS_Fg.logtitle = lbl[logobj[global.curropt].logid]
    if global.newlog[logobj[global.curropt].logid]
        global.newlog[logobj[global.curropt].logid] = 0
}
else
{
    targetx = ((view_wview[0] / 2) + (widescreen_space / 2))
    oSS_Fg.logtitle = default_title
}
