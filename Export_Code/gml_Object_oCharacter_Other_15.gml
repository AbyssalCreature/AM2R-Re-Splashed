var combo, screwDamage;
if global.spectator
    exit
otherOBJ = other.object_index
global.multiDamageCollision = 1
combo = 0
screwDamage = 25
if (global.playerFreeze > 0)
    screwDamage = (screwDamage / 2)
damage_player(screwDamage, ((20 * other.mirror) * -1), -3, 0, combo)
