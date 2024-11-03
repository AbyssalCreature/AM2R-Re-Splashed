enemy_death2()
i = 0
repeat (36)
{
    prj = instance_create(x, y, oRoboMineProj)
    prj.direction = (i * 10)
    prj.speed = 3
    prj = instance_create(x, y, oRoboMineProj)
    prj.direction = (i * 10)
    prj.speed = 2
    prj = instance_create(x, y, oRoboMineProj)
    prj.direction = (i * 10)
    prj.speed = 1
    i += 1
}
