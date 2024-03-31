var combo;
if global.spectator
    exit
otherOBJ = other.object_index
if (invincible == 0)
{
    if (otherOBJ == 440 || otherOBJ == 438)
    {
        if other.smissile
            global.hitBySuper = 1
    }
    damageDir = -1
    knockbackY = -3
    combo = 0
    if ((!((global.item[5] && global.currentsuit == 2))) && other.ibeam && otherOBJ == 439)
        other.damage *= 0.8
    global.multiDamageCollision = 1
    if (other.direction > 90 && other.direction < 270)
        damageDir = 1
    if (otherOBJ == 438)
    {
        if (other.x < x)
            damageDir = -1
        else
            damageDir = 1
    }
    if (otherOBJ == 440 && global.playerFreeze > 151)
    {
        with (other.id)
            event_user(0)
        exit
    }
    if (otherOBJ == 440 && global.playerFreeze > 0 && global.playerFreeze <= 151 && (!global.frozenByRollback))
    {
        if ((!other.icemissiles) || other.smissile)
            global.playerFreeze = 1
    }
    if global.frozenByRollback
        show_debug_message("rollback freeze")
    if (global.playerFreeze == 0 && (!global.frozenByRollback))
    {
        if (otherOBJ == 439 && other.ibeam && (!global.freezeDisabled) && global.playerFreeze == 0 && invincible == 0 && canbehit && state != IDLE && state != SAVING && state != SAVINGFX && state != SAVINGSHIPFX && state != SAVINGSHIP && state != ELEVATOR && state != GFELEVATOR)
        {
            global.playerFreeze = 120
            damageDir = 0
            knockbackY = 0
            global.frozenNormally = 1
            with (oControl)
            {
                kLeft = 0
                kRight = 0
                kUp = 0
                kDown = 0
            }
        }
        if ((otherOBJ == 440 || otherOBJ == 438) && other.icemissiles && (!other.smissile) && (!global.freezeDisabled) && global.playerFreeze == 0 && invincible == 0 && canbehit && state != IDLE && state != SAVING && state != SAVINGFX && state != SAVINGSHIPFX && state != SAVINGSHIP && state != ELEVATOR && state != GFELEVATOR)
        {
            global.playerFreeze = 120
            damageDir = 0
            knockbackY = 0
            global.frozenNormally = 1
            with (oControl)
            {
                kLeft = 0
                kRight = 0
                kUp = 0
                kDown = 0
            }
        }
    }
    if (otherOBJ == 439)
        global.ignoreKnockback = 1
    if (!global.frozenByRollback)
        damage_player(other.damage, (5 * damageDir), knockbackY, 0, combo)
}
with (other.id)
    event_user(0)
if (other.pbeam == 0 && otherOBJ != 438)
{
    with (other.id)
        instance_destroy()
}
