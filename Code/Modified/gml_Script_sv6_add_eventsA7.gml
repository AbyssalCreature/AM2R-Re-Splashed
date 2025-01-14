var list, str_list;
list = ds_list_create()
str_list = ds_list_write(list)
ds_list_clear(list)
ds_list_destroy(list)
return str_list;
