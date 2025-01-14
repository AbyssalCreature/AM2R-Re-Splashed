var spawnX;
if (random(100) <= argument2)
{
    if (sprite_index != sQueenProjFrozen)
        xParasite = "Snooping around as usual, I see."
    pickup = irandom(3)
    spawnX = 0
    if (global.playerhealth == global.maxhealth && global.missiles == global.maxmissiles && global.smissiles == global.maxsmissiles)
        spawnX = irandom(1)
    if (pickup == 0)
    {
        if ((global.playerhealth < global.maxhealth && instance_number(oHPickup) < 6) || ((oControl.mod_fusion == 1 || global.sax) && spawnX == 1 && canbeX && instance_number(oHPickup) < 6))
        {
            if ((oControl.mod_fusion == 1 || global.sax) && canbeX == 1)
                xParasite = instance_create(argument0, argument1, oHXPickup)
            else
                instance_create(argument0, argument1, oHPickup)
        }
        else
            pickup = 2
    }
    if (pickup == 1)
    {
        if ((global.playerhealth < global.maxhealth && instance_number(oHPickupBig) < 3) || ((oControl.mod_fusion == 1 || global.sax) && spawnX == 1 && canbeX && instance_number(oHPickupBig) < 3))
        {
            if ((oControl.mod_fusion == 1 || global.sax) && canbeX == 1)
                xParasite = instance_create(argument0, argument1, oHXPickupBig)
            else
                instance_create(argument0, argument1, oHPickupBig)
        }
        else
            pickup = 2
    }
    if (pickup == 2)
    {
        if ((global.missiles < global.maxmissiles && global.maxmissiles > 0 && instance_number(oMPickup) < 8) || ((oControl.mod_fusion == 1 || global.sax) && spawnX == 1 && canbeX && instance_number(oMPickup) < 8))
        {
            if ((oControl.mod_fusion == 1 || global.sax) && canbeX == 1)
                xParasite = instance_create(argument0, argument1, oMXPickup)
            else
                instance_create(argument0, argument1, oMPickup)
        }
        else
            pickup = 3
    }
    if (pickup == 3)
    {
        if (global.smissiles < global.maxsmissiles && global.maxsmissiles > 0 && instance_number(oSMPickup) < 2)
        {
            if ((oControl.mod_fusion == 1 || global.sax) && canbeX == 1)
                xParasite = instance_create(argument0, argument1, oSMXPickup)
            else
                instance_create(argument0, argument1, oSMPickup)
        }
        else
            exit
    }
    if (sprite_index != sQueenProjFrozen && instance_exists(xParasite) && (oControl.mod_fusion == 1 || global.sax))
    {
        PlaySoundMono(sndXMorph2)
        xParasite.reform = -1
        xParasite.sizeX = 5.8
        xParasite.sizeY = 4.2
        xParasite.state = 1
        xParasite.statetime = 40
        xParasite.counter = 0
        if (sprite_index == sHalzynBodyFrozen)
            xParasite.lastEnemyGlow = glow
        return xParasite;
    }
}
