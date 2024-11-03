if (global.unlock[argument0] == 0)
{
    global.unlock[argument0] = 1
    save_stats()
    if (!file_exists("extras.sav"))
    {
        save_stats2()
        load_stats2()
    }
}
