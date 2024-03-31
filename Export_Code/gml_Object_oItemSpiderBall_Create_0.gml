event_inherited()
itemid = 2
text1 = get_text("Items", "SpiderBall")
if (global.opspdstyle == 0)
{
    if (global.opaimstyle == 0)
    {
        text2 = get_text("Items", "SpiderBallPress_Text1")
        btn1_name = "Aim"
    }
    else
    {
        text2 = get_text("Items", "SpiderBallPress_Text2")
        btn1_name = "Aim"
        btn2_name = "Aim2"
    }
}
if (global.opspdstyle == 1)
{
    text2 = get_text("Items", "SpiderBallPress_Text1")
    btn1_name = "Down"
}
if (global.opspdstyle == 2)
{
    if (global.opaimstyle == 0)
    {
        text2 = get_text("Items", "SpiderBallHold_Text1")
        btn1_name = "Aim"
    }
    else
    {
        text2 = get_text("Items", "SpiderBallHold_Text2")
        btn1_name = "Aim"
        btn2_name = "Aim2"
    }
}
