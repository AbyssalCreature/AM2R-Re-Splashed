if (global.newgame == 1)
    start_new_game()
else
    load_game((global.savedirectory + string((global.saveslot + 1))))
