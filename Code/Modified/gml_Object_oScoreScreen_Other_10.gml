if (round(((itemstaken / 88) * 100)) < 100 || (instance_exists(oClient) && saxmode))
    room_change(1, 1)
else
    room_goto(rm_secretEnding)
