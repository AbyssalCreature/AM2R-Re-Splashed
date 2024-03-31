var tx, ty, charx, chary;
if moving
{
    if (windup < winduptime)
    {
        windup++
        tx = smoothstep(0, winduptime, windup)
        ty = smoothstep(0, winduptime, windup)
        x = (initialx + ((windupx - initialx) * tx))
        y = (initialy + ((windupy - initialy) * ty))
    }
    else
    {
        x += lengthdir_x(projspeed, projdir)
        y += lengthdir_y(projspeed, projdir)
        if (lifetime > 0)
            lifetime--
        else
            event_user(0)
    }
}
else if instance_exists(oCharacter)
{
    charx = oCharacter.x
    chary = oCharacter.y
    x = (charx + lengthdir_x(80, orbitdir))
    y = (chary + lengthdir_y(80, orbitdir))
    orbitdir += orbitspeed
}
