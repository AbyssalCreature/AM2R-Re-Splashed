init = 0
flashing = 0
boosting = 0
spr_normal = 778
spr_frozen = 780
spr_open = 779
shaking = 0
tail = 0
canbeX = 1
hp = global.mod_serrisHbody
damage = global.mod_serrisDamage
if (global.inventory[11] == 0 && (!tail))
    state = 2
else
    state = 0
statetime = 0
inrange = 0
