var damage_taken, currState, experimentalExtraSAXDamageMultiplier, metcount, i, serverdamageMult;
if global.spectator
    exit
serverdamageMult = global.damageMult
if global.multiDamageCollision
{
    metcount = 0
    for (i = 0; i <= 40; i++)
    {
        if (global.metdead[i] == 1)
            metcount += 1
    }
    if global.sax
    {
        global.damageMult = (1 + (1.5 * (metcount / global.MetCount)))
        if (global.damageMult > 2.5)
            global.damageMult = 2.5
        if (global.currentsuit == 2 && global.juggActive)
            global.ignoreKnockback = 1
    }
}
experimentalExtraSAXDamageMultiplier = 1
damage_taken = 0
if (global.currentsuit == 0 || argument3 == 1)
{
    if (!global.multiDamageCollision)
        damage_taken = (argument0 * oControl.mod_diffmult)
    else
    {
        damage_taken = ((argument0 * experimentalExtraSAXDamageMultiplier) * oControl.mod_diffmult)
        damage_taken = (damage_taken + (damage_taken * global.damageMult))
    }
}
if (argument3 == 0)
{
    if (global.currentsuit == 1)
    {
        if (!global.multiDamageCollision)
            damage_taken = (ceil((argument0 * 0.5)) * oControl.mod_diffmult)
        else
        {
            damage_taken = ((ceil((argument0 * 0.75)) * experimentalExtraSAXDamageMultiplier) * oControl.mod_diffmult)
            damage_taken = (damage_taken + (damage_taken * global.damageMult))
        }
    }
    if (global.currentsuit == 2)
    {
        if (!global.multiDamageCollision)
        {
            if (global.item[5] == 0)
                damage_taken = (ceil((argument0 * 0.5)) * oControl.mod_diffmult)
            else
                damage_taken = (ceil((argument0 * 0.25)) * oControl.mod_diffmult)
        }
        else if (global.item[5] == 0)
        {
            damage_taken = ((ceil((argument0 * 0.75)) * experimentalExtraSAXDamageMultiplier) * oControl.mod_diffmult)
            damage_taken = (damage_taken + (damage_taken * global.damageMult))
        }
        else
        {
            damage_taken = ((ceil((argument0 * 0.6)) * experimentalExtraSAXDamageMultiplier) * oControl.mod_diffmult)
            damage_taken = (damage_taken + (damage_taken * global.damageMult))
        }
    }
}
if (global.playerhealth > 0)
{
    with (oCharacter)
    {
        currState = state
        if (((state != HURT && invincible == 0) || (argument4 == 1 && statetime > 2)) && (!global.ignoreKnockback))
        {
            if (canbehit && state != IDLE && state != SAVING && state != SAVINGFX && state != SAVINGSHIPFX && state != SAVINGSHIP && state != ELEVATOR && state != GFELEVATOR)
            {
                if (state == BALL || state == AIRBALL || state == SPIDERBALL || sjball == 1)
                {
                    multiBall = 1
                    fixedx = 12
                    sball = 0
                }
                else
                    sjball = 0
                if (state == WATERJET)
                {
                    state = AIRBALL
                    statetime = 0
                }
                if global.multiDamageCollision
                {
                    if (otherOBJ != 439)
                        state = HURT
                    else
                        fixedx = 0
                }
                else
                    state = HURT
                statetime = 0
                canturn = 0
                image_index = 0
                if (other.x >= x)
                    xVel = (-argument1)
                if (other.x < x)
                    xVel = argument1
                yVel = argument2
                sfx_play(sndHurt)
                ctrl_vibrate(0.5, 0.5, 10)
                invincible = 60
                if (global.playerFreeze > 0)
                {
                    invincible = 45
                    if (state == BALL || state == AIRBALL || state == SPIDERBALL)
                        fixedx = 0
                }
                if (global.playerFreeze == 156)
                {
                    state = currState
                    invincible = 0
                    if (state == BALL || state == AIRBALL || state == SPIDERBALL)
                        fixedx = 0
                }
                if inwater
                {
                    repeat (3 + floor(random(3)))
                    {
                        bubble = instance_create(x, ((y - 6) - random(20)), oLBubble)
                        if instance_exists(bubble)
                        {
                            bubble.hspeed = (1 - random(2))
                            bubble.vspeed = (-0.1 - random(1))
                        }
                    }
                }
                global.playerhealth -= damage_taken
            }
        }
        if (global.playerhealth <= 0 && state != DEFEATED)
        {
            alarm[0] = 6
            state = DEFEATED
        }
    }
}
with (oCharacter)
{
    if (global.ignoreKnockback && invincible == 0)
    {
        invincible = 60
        if (global.playerFreeze > 0)
        {
            invincible = 45
            if (state == BALL || state == AIRBALL || state == SPIDERBALL)
                fixedx = 0
        }
        if (global.playerFreeze == 156)
        {
            invincible = 0
            if (state == BALL || state == AIRBALL || state == SPIDERBALL)
                fixedx = 0
        }
        global.playerhealth -= damage_taken
        if (global.playerhealth <= 0 && state != DEFEATED)
        {
            alarm[0] = 6
            state = DEFEATED
        }
    }
}
global.multiDamageCollision = 0
global.ignoreKnockback = 0
global.hitBySuper = 0
global.damageMult = serverdamageMult
if instance_exists(oA2WaterJetMachine)
{
    with (oA2WaterJetMachine)
        state = 0
}
