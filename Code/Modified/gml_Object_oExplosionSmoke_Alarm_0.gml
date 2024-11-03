repeat density
{
    expl = make_explosion1(random_range((x - (width / 2)), (x + (width / 2))), random_range((y - (height / 2)), (y + (height / 2))))
    expl.depth = -300
    expl.direction = random_range((expl_dir - 5), (expl_dir + 5))
    expl.speed = random(expl_spd)
    expl = make_smoke_explosion(random_range((x - (width / 2)), (x + (width / 2))), random_range((y - (height / 2)), (y + (height / 2))))
    expl.depth = -300
    expl.direction = random_range((expl_dir - 5), (expl_dir + 5))
    expl.speed = random(expl_spd)
}
explosions -= 1
if (explosions > 0)
    alarm[0] = 5
else
{
    alarm[1] = 5
    alarm[2] = smoke_steps
}
