if (smissile == 0)
    make_smoke_explosion2((startx + ((x - startx) / 2)), (starty + ((y - starty) / 2)))
else
    make_smoke_explosion((startx + ((x - startx) / 2)), (starty + ((y - starty) / 2)))
flame = instance_create(x, y, oMissileFlame)
flame.image_angle = image_angle
if smissile
    flame.sprite_index = sSMissileFlame
