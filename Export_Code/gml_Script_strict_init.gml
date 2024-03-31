var json_data, f;
json_data = ""
f = file_text_open_read(argument0)
while (!file_text_eof(f))
{
    json_data += file_text_read_string(f)
    file_text_readln(f)
}
file_text_close(f)
global._strict_data = json_decode(json_data)
