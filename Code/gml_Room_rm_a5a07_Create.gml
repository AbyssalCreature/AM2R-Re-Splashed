global.mapoffsetx = 69
global.mapoffsety = 40
global.waterlevel = 0
global.floormaterial = 3
if (oControl.mod_gravity != 9)
    instance_create(152, 160, scr_itemsopen(oControl.mod_gravity))
if (!oControl.msr_fusionsuit)
{
    tile_set_background(10125853, tlGravityBG)
    tile_set_background(10125854, tlGravityBG)
    tile_set_background(10125855, tlGravityBG)
    tile_set_background(10125856, tlGravityBG)
    tile_set_background(10125857, tlGravityBG)
}
else if oControl.msr_fusionsuit
{
    tile_set_background(10125853, tlGravityBG2D)
    tile_set_background(10125854, tlGravityBG2D)
    tile_set_background(10125855, tlGravityBG2D)
    tile_set_background(10125856, tlGravityBG2D)
    tile_set_background(10125857, tlGravityBG2D)
}
