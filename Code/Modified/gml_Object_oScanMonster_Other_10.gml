if global.ophudshowlogmsg
{
    notif = instance_create(0, 0, oNotification)
    notif.text1 = get_text("ScanEvents", "Monsters")
    if (ammount > 1)
        notif.text2 = ((string(ammount) + " ") + get_text("ScanEvents", "Monsters_Text"))
    else
        notif.text2 = ((string(ammount) + " ") + get_text("Misc", "Monster_Text"))
    notif.btn1_name = ""
    notif.btn2_name = ""
    notif.alarm[0] = 240
}
global.monstersarea = ammount
global.event[eventno] = 1
instance_destroy()
