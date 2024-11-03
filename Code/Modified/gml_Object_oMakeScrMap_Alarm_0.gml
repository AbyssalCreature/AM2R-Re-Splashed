if (!directory_exists("scrmap"))
    directory_create(((working_directory + "/") + "scrmap"))
i = -1
do
{
    i += 1
} until ((!(file_exists((((working_directory + "/scrmap/scrmap 0") + string(i)) + ".png")))) && (!(file_exists((((working_directory + "/scrmap/scrmap 00") + string(i)) + ".png")))) && (!(file_exists((((working_directory + "/scrmap/scrmap 000") + string(i)) + ".png")))));
sname = ("scrmap/scrmap " + string(i))
if (i < 1000)
    sname = ("scrmap/scrmap 0" + string(i))
if (i < 100)
    sname = ("scrmap/scrmap 00" + string(i))
if (i < 10)
    sname = ("scrmap/scrmap 000" + string(i))
screen_save((sname + ".png"))
row += 1
if (row > (rows - 1))
{
    row = 0
    column += 1
}
if (column > (columns - 1))
{
    with (oCharacter)
        visible = true
    view_object[0] = oCamera
    instance_destroy()
    exit
}
view_xview[0] = (column * 320)
view_yview[0] = (row * 240)
alarm[0] = 1
