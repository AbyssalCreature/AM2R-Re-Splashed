var choice;
choice = choose(354, 355, 356)
if (choice == global.lastSeptoggSound)
    play_septogg_sound()
else
{
    sfx_play(choice)
    global.lastSeptoggSound = choice
}
