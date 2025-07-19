global.mapoffsetx = 69
global.mapoffsety = 40
global.waterlevel = 0
global.floormaterial = 3
instance_create(152, 160, scr_itemsopen(oControl.mod_gravity))
if (!oControl.msr_fusionsuit)
{
    tile_set_background(10125785, tlGravityBG)
    tile_set_background(10125783, tlGravityBG)
    tile_set_background(10125782, tlGravityBG)
    tile_set_background(10125784, tlGravityBG)
    tile_set_background(10125786, tlGravityBG)
}
else if oControl.msr_fusionsuit
{
    tile_set_background(10125785, tlGravityBG2D)
    tile_set_background(10125783, tlGravityBG2D)
    tile_set_background(10125782, tlGravityBG2D)
    tile_set_background(10125784, tlGravityBG2D)
    tile_set_background(10125786, tlGravityBG2D)
}
