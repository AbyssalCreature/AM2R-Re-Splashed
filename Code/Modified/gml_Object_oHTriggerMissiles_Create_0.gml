event_inherited()
myid = 3
if (global.hint[myid] == 1)
    instance_destroy()
text1 = get_text("InGameHints", "ShootingMissiles")
if (global.opmslstyle == 1)
    text2 = get_text("InGameHints", "ShootingMissiles_Text1")
if (global.opmslstyle == 0)
    text2 = get_text("InGameHints", "ShootingMissiles_Text2")
btn1_name = "Missile"
duration = 350
