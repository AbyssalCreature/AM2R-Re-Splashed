debug = 0
global.ingame = 0
global.transitiontype = 0
global.transitionx = 0
global.transitiony = 0
init_languages()
load_gameoptions()
writelog("Options Loaded")
init_stats()
randomize_zeta_heads()
randomize_omega_types()
global.mod_fusion_unlocked = 0
global.mod_gamebeaten = 0
load_resources()
if file_exists("data.sav")
    load_stats()
if file_exists("data.sav")
{
    if file_exists("extras.sav")
        load_stats2()
    else
    {
        save_stats2()
        load_stats2()
    }
}
if ((!file_exists("save1")) && (!file_exists("save2")) && (!file_exists("save3")))
{
    if (file_exists("saveX1") && (!file_exists("save1")))
        file_copy("saveX1", "save1")
    if (file_exists("saveX2") && (!file_exists("save2")))
        file_copy("saveX2", "save2")
    if (file_exists("saveX3") && (!file_exists("save3")))
        file_copy("saveX2", "save3")
}
global.shaders_compiled = 0
if shaders_are_supported()
{
    if (shader_is_compiled(shGameBoy) && shader_is_compiled(shPaletteSwap))
        global.shaders_compiled = 1
}
