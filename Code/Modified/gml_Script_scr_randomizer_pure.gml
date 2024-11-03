var temp_seed, percent33, checkcounter, shuff;
temp_seed = random_get_seed()
randomize()
oControl.seed = random_get_seed()
random_set_seed(oControl.seed)
if (oControl.mod_usemanualseed == 1)
{
    random_set_seed(oControl.mod_seed)
    oControl.seed = oControl.mod_seed
}
oControl.list_bombs = ds_list_create()
ds_list_add(oControl.list_bombs, 1, 0)
oControl.list_powerbombs = ds_list_create()
if (oControl.mod_fusion == 1)
    ds_list_add(oControl.list_powerbombs, 1)
else
    ds_list_add(oControl.list_powerbombs, 1)
oControl.list_speedbooster = ds_list_create()
ds_list_add(oControl.list_speedbooster, 1, 0)
ds_list_shuffle(oControl.list_speedbooster)
oControl.list_spacejump = ds_list_create()
ds_list_add(oControl.list_spacejump, 0)
ds_list_shuffle(oControl.list_spacejump)
oControl.list_torizo = ds_list_create()
ds_list_add(oControl.list_torizo, 0)
ds_list_shuffle(oControl.list_torizo)
oControl.list_genesis = ds_list_create()
ds_list_add(oControl.list_genesis, 1, 0, 0, 0, 0)
ds_list_shuffle(oControl.list_genesis)
oControl.list_ibeam = ds_list_create()
ds_list_add(oControl.list_ibeam, 1, 0, 0, 0, 0)
ds_list_shuffle(oControl.list_ibeam)
oControl.list_jumpball = ds_list_create()
ds_list_add(oControl.list_jumpball, 1, 1, 0, 0)
ds_list_shuffle(oControl.list_jumpball)
oControl.list_33percent = ds_list_create()
ds_list_add(oControl.list_33percent, 1, 0, 0)
ds_list_shuffle(oControl.list_33percent)
percent33 = ds_list_find_value(oControl.list_33percent, (ds_list_size(oControl.list_33percent) - 1))
oControl.list_locations = ds_list_create()
ds_list_add(oControl.list_locations, 52, 53, 54, 55, 56, 57, 60, 100, 101, 102, 104, 105, 106, 107, 109, 111, 150, 151, 152, 153, 154, 155, 156, 159, 161, 163)
ds_list_add(oControl.list_locations, 202, 203, 204, 205, 208, 210, 211, 214, 250, 252, 255, 257, 259, 303, 304, 307, 308, 309)
ds_list_add(oControl.list_locations, 51, 110, 162, 207, 209, 215, 256, 300, 305)
ds_list_add(oControl.list_locations, 50, 103, 108, 157, 158, 200, 201, 251, 306)
if (oControl.mod_insanitymode == 0)
    ds_list_add(oControl.list_locations, 254)
ds_list_add(oControl.list_locations, 58, 59, 112, 160, 212, 213, 258, 301, 302)
ds_list_shuffle(oControl.list_locations)
oControl.mod_51 = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
oControl.mod_56 = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
oControl.mod_60 = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
ds_list_add(oControl.list_locations, 0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14)
ds_list_shuffle(oControl.list_locations)
oControl.twocount_B_SJ = 0
oControl.twocount_HJ_SJ = 0
oControl.threecount = 0
oControl.bombs_placed = 0
oControl.hijump_placed = 0
oControl.spacejump_placed = 0
oControl.speed_placed = 0
oControl.screw_placed = 0
oControl.bombs_wall = 0
oControl.spider_wall = 0
oControl.spring_wall = 0
oControl.hijump_wall = 0
oControl.spacejump_wall = 0
oControl.screw_wall = 0
oControl.gravity_wall = 0
oControl.varia_wall = 0
checkcounter = 0
oControl.mod_54 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_55 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_110 = scr_logic_SB_wall(1, 1, 0, 1, 0)
oControl.mod_161 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_162 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_201 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_204 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_205 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_207 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_208 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_209 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_212 = scr_logic_SB_wall(0, 1, 1, 1, 1)
oControl.mod_301 = scr_logic_SB_wall(1, 1, 1, 1, 1)
oControl.mod_305 = scr_logic_SB_wall(1, 0, 1, 1, 1)
oControl.mod_306 = scr_logic_SB_wall(0, 0, 1, 1, 1)
oControl.mod_307 = scr_logic_SB_wall(1, 0, 1, 1, 1)
oControl.mod_309 = scr_logic_SB_wall(1, 0, 1, 1, 1)
oControl.mod_255 = scr_logic_SB_wall(1, 1, 1, 1, 1)
while 1
{
    oControl.mod_plasma = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (scr_PUorET(oControl.mod_plasma) == 1)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
while 1
{
    oControl.mod_spacejump = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (scr_PUorET(oControl.mod_spacejump) == 1)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
shuff = ds_list_find_value(oControl.list_ibeam, (ds_list_size(oControl.list_ibeam) - 1))
while 1
{
    oControl.mod_ice = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (shuff == 1)
        break
    else if (scr_PUorET(oControl.mod_ice) == 1)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
shuff = ds_list_find_value(oControl.list_genesis, (ds_list_size(oControl.list_genesis) - 1))
while 1
{
    oControl.mod_50 = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (shuff == 1)
        break
    else if (scr_PUorET(oControl.mod_50) == 1)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
shuff = ds_list_find_value(oControl.list_jumpball, (ds_list_size(oControl.list_jumpball) - 1))
while 1
{
    oControl.mod_jumpball = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (shuff == 1)
        break
    else if (scr_PUorET(oControl.mod_jumpball) == 1)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
while 1
{
    oControl.mod_53 = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (oControl.mod_53 != 0)
    {
        if (oControl.mod_53 != 7)
            break
        else if (oControl.bombs_wall == 0 && oControl.spacejump_wall == 0)
            break
        else
        {
            ds_list_shuffle(oControl.list_locations)
            continue
        }
    }
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
while 1
{
    oControl.mod_57 = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (oControl.mod_57 != 4 && oControl.mod_57 != 6)
    {
        if (oControl.mod_57 != 7)
            break
        else if (oControl.spacejump_wall == 0 && oControl.hijump_wall == 0)
            break
        else
        {
            ds_list_shuffle(oControl.list_locations)
            continue
        }
    }
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
while 1
{
    checkcounter = 0
    oControl.mod_259 = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (oControl.mod_259 != 8)
        checkcounter++
    if (oControl.mod_259 == 7 && oControl.screw_wall == 1)
    {
    }
    else
        checkcounter++
    if (checkcounter == 2)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
while 1
{
    checkcounter = 0
    oControl.mod_300 = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (oControl.mod_300 != 8)
        checkcounter++
    if (oControl.mod_300 == 7 && oControl.screw_wall)
    {
    }
    else
        checkcounter++
    if (checkcounter == 2)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
while 1
{
    checkcounter = 0
    oControl.mod_160 = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (oControl.mod_160 == 7 && oControl.screw_wall)
    {
    }
    else
        checkcounter++
    if (oControl.threecount > 1 && (oControl.mod_160 == 0 || oControl.mod_160 == 4 || oControl.mod_160 == 6))
    {
    }
    else
        checkcounter++
    if (checkcounter == 2)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
while 1
{
    checkcounter = 0
    oControl.mod_158 = ds_list_find_value(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
    if (oControl.threecount > 1 && (oControl.mod_158 == 0 || oControl.mod_158 == 4 || oControl.mod_158 == 6))
    {
    }
    else
        checkcounter++
    if (checkcounter == 1)
        break
    else
    {
        ds_list_shuffle(oControl.list_locations)
        continue
    }
}
ds_list_delete(oControl.list_locations, (ds_list_size(oControl.list_locations) - 1))
oControl.mod_gravity = scr_random_draw_pool()
oControl.mod_screwattack = scr_random_draw_pool()
oControl.mod_hijump = scr_random_draw_pool()
oControl.mod_speedbooster = scr_random_draw_pool()
oControl.mod_wave = scr_random_draw_pool()
oControl.mod_spazer = scr_random_draw_pool()
oControl.mod_bombs = scr_random_draw_pool()
oControl.mod_spider = scr_random_draw_pool()
oControl.mod_varia = scr_random_draw_pool()
oControl.mod_charge = scr_random_draw_pool()
oControl.mod_100 = scr_random_draw_pool()
oControl.mod_101 = scr_random_draw_pool()
oControl.mod_102 = scr_random_draw_pool()
oControl.mod_103 = scr_random_draw_pool()
oControl.mod_104 = scr_random_draw_pool()
oControl.mod_105 = scr_random_draw_pool()
oControl.mod_106 = scr_random_draw_pool()
oControl.mod_107 = scr_random_draw_pool()
oControl.mod_108 = scr_random_draw_pool()
oControl.mod_109 = scr_random_draw_pool()
oControl.mod_52 = scr_random_draw_pool()
oControl.mod_152 = scr_random_draw_pool()
oControl.mod_163 = scr_random_draw_pool()
oControl.mod_111 = scr_random_draw_111()
oControl.mod_150 = scr_random_draw_pool()
oControl.mod_151 = scr_random_draw_pool()
oControl.mod_153 = scr_random_draw_pool()
oControl.mod_154 = scr_random_draw_pool()
oControl.mod_155 = scr_random_draw_pool()
oControl.mod_156 = scr_random_draw_pool()
oControl.mod_159 = scr_random_draw_pool()
oControl.mod_202 = scr_random_draw_pool()
oControl.mod_203 = scr_random_draw_pool()
oControl.mod_210 = scr_random_draw_pool()
oControl.mod_211 = scr_random_draw_pool()
oControl.mod_214 = scr_random_draw_pool()
oControl.mod_250 = scr_random_draw_pool()
oControl.mod_252 = scr_random_draw_pool()
oControl.mod_257 = scr_random_draw_spider()
oControl.mod_303 = scr_random_draw_gravity_spider()
oControl.mod_304 = scr_random_draw_pool()
oControl.mod_308 = scr_random_draw_pool()
oControl.mod_215 = scr_random_draw_pool()
oControl.mod_256 = scr_random_draw_pool()
oControl.mod_206 = 206
oControl.mod_157 = scr_random_draw_pool()
oControl.mod_200 = scr_random_draw_pool()
oControl.mod_251 = scr_random_draw_pool()
if (oControl.mod_insanitymode == 0)
    oControl.mod_254 = scr_random_draw_pool()
else
    oControl.mod_254 = 254
oControl.mod_302 = scr_random_draw_gravity()
oControl.mod_58 = scr_random_draw_pool()
oControl.mod_59 = scr_random_draw_pool()
oControl.mod_112 = scr_random_draw_112()
oControl.mod_213 = scr_random_draw_pool()
oControl.mod_258 = scr_random_draw_pool()
oControl.mod_253 = 253
ds_list_destroy(oControl.list_bombs)
ds_list_destroy(oControl.list_powerbombs)
ds_list_destroy(oControl.list_speedbooster)
ds_list_destroy(oControl.list_genesis)
ds_list_destroy(oControl.list_jumpball)
ds_list_destroy(oControl.list_33percent)
ds_list_destroy(oControl.list_locations)
random_set_seed(temp_seed)
