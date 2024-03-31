list = ds_list_create()
ds_list_read(list, base64_decode(file_text_read_string(argument0)))
i = 0
j = 0
repeat (350)
{
    global.item[j] = readline()
    j += 1
}
j = 400
repeat (400)
{
    j -= 1
    global.multiItem[j] = readline()
}
j = 0
repeat (15)
{
    global.inventory[j] = readline()
    j += 1
}
ds_list_clear(list)
