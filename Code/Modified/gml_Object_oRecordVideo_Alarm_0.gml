if (!directory_exists("vidframes"))
    directory_create(((working_directory + "/") + "vidframes"))
i = -1
do
{
    i += 1
} until ((!(file_exists((((working_directory + "/vidframes/frame 0") + string(i)) + ".png")))) && (!(file_exists((((working_directory + "/vidframes/frame 00") + string(i)) + ".png")))) && (!(file_exists((((working_directory + "/vidframes/frame 000") + string(i)) + ".png")))));
sname = ("vidframes/frame " + string(i))
if (i < 1000)
    sname = ("vidframes/frame 0" + string(i))
if (i < 100)
    sname = ("vidframes/frame 00" + string(i))
if (i < 10)
    sname = ("vidframes/frame 000" + string(i))
screen_save((sname + ".png"))
alarm[0] = 1
