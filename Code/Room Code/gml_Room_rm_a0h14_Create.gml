global.mapoffsetx = 42
global.mapoffsety = 24
global.watertype = 1
global.floormaterial = 1
global.darkness = 2
scan_log(4, get_text("ScanEvents", "ScanEnvironment"), 180, 1)
if (!sfx_isplaying(musLabAmbience))
{
    mus_stop_all()
    mus_loop(musLabAmbience)
}
