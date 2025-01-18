if (!instance_exists(oCoreXShell))
{
    if (state == 0)
    {
        if (statetime == 0)
            flashing = 10000
        move_towards_point(roomcenter_x, (roomcenter_y + roomoffsety), 1)
        if (point_distance(x, y, roomcenter_x, (roomcenter_y + roomoffsety)) <= 1)
        {
            speed = 0
            state = 1
            statetime = 0
        }
        x += xx
        y += yy
    }
    if (state == 1)
    {
        if (statetime == 0)
            alarm[0] = 30
        if (statetime == 30)
            flashing = 0
        x += xx
        y += yy
    }
    statetime += 1
    timer_x++
    if (timer_x > ((2 * pi) / frequency_x))
        timer_x -= ((2 * pi) / frequency_x)
    timer_y++
    if (timer_y > ((2 * pi) / frequency_y))
        timer_y -= ((2 * pi) / frequency_y)
    xx = (sin((timer_x * frequency_x)) * amplitude_x)
    yy = (sin((timer_y * frequency_y)) * amplitude_y)
}
if (fxtimer < 10)
    fxtimer += 1
else
    fxtimer = 0
if (flashing > 0)
    flashing -= 1
timer_glow++
if (timer_glow > ((2 * pi) / frequency_glow))
    timer_glow -= ((2 * pi) / frequency_glow)
glow = (sin((timer_glow * frequency_glow)) * amplitude_glow)
if (state == 1 && flashing == 0 && state != 6)
{
    if (distance_to_point(oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2))) < 0.1)
    {
        global.playerhealth += 500
        if (global.playerhealth > global.maxhealth)
            global.playerhealth = global.maxhealth
        global.missiles += 75
        if (global.missiles > global.maxmissiles)
            global.missiles = global.maxmissiles
        global.smissiles += 10
        if (global.smissiles > global.maxsmissiles)
            global.smissiles = global.maxsmissiles
        global.pbombs += 2
        if (global.pbombs > global.maxpbombs)
            global.pbombs = global.maxpbombs
        PlaySoundMono(sndAbsorbX)
        with (instance_create(oCharacter.x, (oCharacter.y - (oCharacter.sprite_height / 2)), oAbsorbX))
            core = 1
        state = 6
        statetime = 0
        relativeX = (x - oCharacter.x)
        relativeY = (y - (oCharacter.y - (oCharacter.sprite_height / 2)))
        screwattackpickupfx = oCharacter.fxtimer
    }
}
if (state == 6)
{
    global.enablecontrol = 0
    with (oCharacter)
    {
        fxtimer = other.screwattackpickupfx
        speedmultiplier = 0
        speedmultiresettimer = 10000
        kLeft = 0
        kRight = 0
        kUp = 0
        kDown = 0
        kJump = 0
        kJumpPressed = 0
        kRun = 0
        kAim = 0
        kFire = 0
        kMissile = 0
        charge = 0
        Mute_Loops()
    }
    with (oFXTrail)
    {
        if (sprite_index == sScrewSpark)
            visible = false
    }
}
