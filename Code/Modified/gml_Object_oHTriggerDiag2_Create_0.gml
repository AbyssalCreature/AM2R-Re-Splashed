event_inherited()
myid = 2
if (global.hint[myid] == 1)
    instance_destroy()
text1 = get_text("InGameHints", "AimingDownwards")
if (global.opaimstyle == 0)
{
    text2 = get_text("InGameHints", "AimingDownwards_Text1")
    btn1_name = "Down"
    btn2_name = "Aim"
}
if (global.opaimstyle == 1)
{
    text2 = get_text("InGameHints", "AimingDownwards_Text2")
    btn1_name = "Aim2"
}
duration = 280
