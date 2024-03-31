if joystick_exists(global.opjoyid)
    global.joydetected = 1
else
    global.joydetected = 0
init = 0
if (os_type == os_android)
    instance_create(0, 0, oTouchControls)
room_change(19, 0)
