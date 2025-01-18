var driftmin, driftmax, xx, yy, inst;
if (global.event[307] == 1)
{
    scan_log(6, get_text("ScanEvents", "ScanEnvironment"), 180, 1)
    instance_create(2360, 1008, oElderSeptogg)
    instance_create(2436, 996, oElderSeptogg)
    instance_create(6208, 1072, oElderSeptogg)
    instance_create(6288, 1088, oElderSeptogg)
}
driftmin = 0.015
driftmax = 0.025
xx = 4042
yy = 421
with (instance_create(6112, 1136, oMEgg1))
    visible = false
inst = instance_create(xx, (yy - 23), oBabySeptogg)
with (inst)
{
    scavenge = 519
    depth = -93
    frequency_x = (choose(-1, 1) * random_range(driftmin, driftmax))
    amplitude_x = 3
    frequency_y = ((choose(-1, 1) * random_range(driftmin, driftmax)) * 2)
    amplitude_y = 3
    alarm[0] = 1
}
inst = instance_create((xx + 13), (yy - 23), oBabySeptogg)
with (inst)
{
    scavenge = 519
    depth = -92
    frequency_x = (choose(-1, 1) * random_range(driftmin, driftmax))
    amplitude_x = 3
    frequency_y = ((choose(-1, 1) * random_range(driftmin, driftmax)) * 2)
    amplitude_y = 3
    alarm[0] = 1
}
