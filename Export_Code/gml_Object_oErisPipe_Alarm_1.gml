var sp1;
if active
{
    sp1 = instance_create(((x + irandom_range((3 * facing), (6 * facing))) + ((1 - facing) * 4)), ((y + 8) + irandom(16)), oFXAnimSpark)
    sp1.sprite_index = sBatterySpark
    sp1.image_speed = 0.5
    sp1.additive = 1
    sp1.image_xscale = choose(1, -1)
    sp1.image_yscale = choose(1, -1)
    sp1.image_angle = random(360)
    sp1.depth = -101
    alarm[1] = (3 + irandom(12))
}
