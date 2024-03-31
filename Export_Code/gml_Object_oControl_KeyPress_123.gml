if (!(directory_exists((working_directory + "snap"))))
    directory_create((working_directory + "snap"))
i = -1
do
{
    i += 1
} until ((!(file_exists((((working_directory + "snap/snap 0") + string(i)) + ".png")))) && (!(file_exists((((working_directory + "snap/snap 00") + string(i)) + ".png")))) && (!(file_exists((((working_directory + "snap/snap 000") + string(i)) + ".png")))));
sname = ((working_directory + "snap/snap ") + string(i))
if (i < 1000)
    sname = ((working_directory + "snap/snap 0") + string(i))
if (i < 100)
    sname = ((working_directory + "snap/snap 00") + string(i))
if (i < 10)
    sname = ((working_directory + "snap/snap 000") + string(i))
screen_save((sname + ".png"))
