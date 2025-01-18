if (round(((global.itemstaken / 88) * 100)) < 100)
    room_change(1, 1)
else
    room_goto(rm_secretEnding)
