var keypos, gmid, key, read, file, epos, rate, keys, filesize;
if (!file_exists(argument0))
    return -1;
keypos = 0
gmid = string(game_id)
key = ""
read = 0
file = 0
epos = 0
rate = min(argument2, 10)
rate = max(rate, 0)
repeat (5)
    gmid += gmid
epos = 0
repeat floor((string_length(string(game_id)) * 5))
{
    keys[epos] = (ord(string_copy(gmid, epos, 2)) ^ (ord(string_char_at(argument1, keypos)) - floor((epos / 3))))
    keypos += 1
    if (keypos > string_length(argument1))
        keypos = 1
    epos += 1
}
epos -= 1
keypos = 0
file = file_bin_open(argument0, 2)
file_bin_seek(file, 0)
filesize = file_bin_size(file)
rate *= (filesize / 10000)
rate = round(rate)
do
{
    read = file_bin_read_byte(file)
    file_bin_seek(file, (file_bin_position(file) - 1))
    file_bin_write_byte(file, (read ^ keys[keypos]))
    keypos += 1
    if (keypos > epos)
        keypos = 1
    if rate
        file_bin_seek(file, (file_bin_position(file) + rate))
} until (file_bin_position(file) >= filesize);
file_bin_close(file)
return 1;
