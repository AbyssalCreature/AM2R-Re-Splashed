var list, str_list;
list = ds_list_create()
ds_list_add(list, global.save_room)
ds_list_add(list, global.difficulty)
ds_list_add(list, global.gametime)
ds_list_add(list, global.itemstaken)
ds_list_add(list, global.etanks)
ds_list_add(list, global.mtanks)
ds_list_add(list, global.stanks)
ds_list_add(list, global.ptanks)
ds_list_add(list, global.dnatanks)
ds_list_add(list, global.dnacount)
ds_list_add(list, global.monstersleft)
ds_list_add(list, global.monstersarea)
ds_list_add(list, global.lavastate)
ds_list_add(list, global.mapmarker)
ds_list_add(list, global.mapmarkerx)
ds_list_add(list, global.mapmarkery)
ds_list_add(list, global.seedreceived)
ds_list_add(list, global.floodtraps)
ds_list_add(list, global.tosstraps)
ds_list_add(list, global.shorttraps)
ds_list_add(list, global.emptraps)
ds_list_add(list, global.touhoutraps)
ds_list_add(list, global.ohkotraps)
i = 0
repeat (36)
{
    ds_list_add(list, 0)
    i += 1
}
str_list = ds_list_write(list)
ds_list_clear(list)
return str_list;
