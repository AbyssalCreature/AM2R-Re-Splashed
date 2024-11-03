var file;
global.currentlanguage = 0
i = 0
fid = file_text_open_read((working_directory + "lang/languages.txt"))
while (!file_text_eof(fid))
{
    file = file_text_read_string(fid)
    if file_exists(((working_directory + "lang/") + file))
        global.language[i] = ((working_directory + "lang/") + file)
    else
        i--
    file_text_readln(fid)
    i += 1
}
