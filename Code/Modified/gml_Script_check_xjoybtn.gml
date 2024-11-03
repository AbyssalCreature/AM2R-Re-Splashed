var deviceslot;
deviceslot = global.gamepadIndex
if (os_type == os_android || os_type == os_linux)
    deviceslot = global.opjoyid
if gamepad_button_check(deviceslot, gp_face1)
    return 32769;
if gamepad_button_check(deviceslot, gp_face2)
    return 32770;
if gamepad_button_check(deviceslot, gp_face3)
    return 32771;
if gamepad_button_check(deviceslot, gp_face4)
    return 32772;
if gamepad_button_check(deviceslot, gp_shoulderl)
    return 32773;
if gamepad_button_check(deviceslot, gp_shoulderlb)
    return 32775;
if gamepad_button_check(deviceslot, gp_shoulderr)
    return 32774;
if gamepad_button_check(deviceslot, gp_shoulderrb)
    return 32776;
if (gamepad_button_check(deviceslot, gp_select) || (os_type == os_android && keyboard_check(vk_backspace)))
    return 32777;
if gamepad_button_check(deviceslot, gp_start)
    return 32778;
if gamepad_button_check(deviceslot, gp_stickl)
    return 32779;
if gamepad_button_check(deviceslot, gp_stickr)
    return 32780;
return 0;
