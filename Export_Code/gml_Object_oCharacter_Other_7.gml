if (turning == 1)
    turning = 0
if (landing == 1)
    landing = 0
if (morphing == 1)
    morphing = 0
if (unmorphing == 1)
    unmorphing = 0
if (walljumping == 1)
{
    walljumping = 0
    if (aimlock == 0)
        canturn = 1
    yVel = (-6 + ((inwater && global.currentsuit != 2) * 1.5))
    if (facing == LEFT)
    {
        xAcc = -2
        x -= 2
    }
    if (facing == RIGHT)
    {
        xAcc = 2
        x += 2
    }
    image_index = 2
    statetime = 0
    hijump = 1
    LoopSoundMono(spinjump_sound)
}
if (state == JUMPING && vjump == 1)
{
    image_single = 4
    image_speed = 0
}
if (state == BRAKING)
{
    state = STANDING
    statetime = 0
    if (aimlock == 0)
        canturn = 1
}
if (state == SJSTART)
{
    image_index = 3
    image_speed = 0
}
if (state == SUPERJUMP && sjdir == 0)
    image_index = 1
if (state == HURT)
{
    if (sjball == 0)
    {
        state = JUMPING
        vjump = 1
    }
    if (sjball == 1)
        state = AIRBALL
    statetime = 20
    if (aimlock == 0)
        canturn = 1
    sjball = 0
    cmhurt = 20
}
if (state == IDLE && facing != 0)
{
    canrun = 1
    state = RUNNING
    statetime = 0
}
