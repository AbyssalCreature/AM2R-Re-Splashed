var inst;
global.mapoffsetx = 34
global.mapoffsety = 3
global.waterlevel = 0
global.floormaterial = 1
global.darkness = 0
scan_log(6, get_text("ScanEvents", "ScanEnvironment"), 180, 0)
mus_change(musArea8)
instance_create(7856, 416, scr_itemsopen(oControl.mod_59))
for (i = 0; i < instance_number(oSolid); i += 1)
{
    inst = instance_find(oSolid, i)
    if (inst.x < 2784 || inst.x >= 5888)
    {
        switch inst.object_index
        {
            case oSolid1:
                with (inst)
                    instance_change(oSolid1Grass, true)
                break
            case 5:
                with (inst)
                    instance_change(oSlope1Grass, true)
                break
            case 6:
                with (inst)
                    instance_change(oSlope2Grass, true)
                break
            case 9:
                with (inst)
                    instance_change(oSlope1BGrass, true)
                break
            case 10:
                with (inst)
                    instance_change(oSlope2BGrass, true)
                break
        }

    }
}
tile_add(tlRescueTeam, 93, 160, 32, 32, 7099, 874, -99)
create_log_trigger(1, 1, 7113, 890, -11, 1)
tile_set_scale(tile_add(tlRescueTeam, 0, 64, 64, 16, 4071, 400, 90), -1, 1)
create_log_trigger(1, 3, 4048, 416, -16, 1)
spawn_thoth_septoggs()
