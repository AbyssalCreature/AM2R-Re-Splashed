if (global.newgame == 1)
    start_new_game()
else
    load_game(("save" + string((global.saveslot + 1))))
