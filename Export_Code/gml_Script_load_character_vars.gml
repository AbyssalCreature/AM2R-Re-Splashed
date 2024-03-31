global.morphball = 1
global.jumpball = 0
global.powergrip = 1
global.spacejump = 0
global.screwattack = 0
global.hijump = 0
global.spiderball = 0
global.speedbooster = 0
global.bomb = 0
global.ibeam = 0
global.wbeam = 0
global.pbeam = 0
global.sbeam = 0
global.cbeam = 0
global.missiles = 30
global.missiles = oControl.mod_Mstartingcount
global.smissiles = 0
global.pbombs = 0
global.maxmissiles = 30
global.maxmissiles = oControl.mod_Mstartingcount
global.maxsmissiles = 0
global.maxpbombs = 0
global.currentweapon = 0
global.currentsuit = 0
global.playerhealth = 99
global.maxhealth = 99
global.etanks = 0
global.mtanks = 0
global.stanks = 0
global.ptanks = 0
global.dnatanks = 0
global.dnacount = 46
global.equiptraps = 0
global.tosstraps = 0
global.shorttraps = 0
global.emptraps = 0
global.floodtraps = 0
global.touhoutraps = 0
global.ohkotraps = 0
global.equiptraptimer = 0
global.tosstraptimer = 0
global.shorttraptimer = 0
global.floodtraptimer = 0
global.ohkotraptimer = 0
global.emptraptimer = 0
global.touhoutraptimer = 0
global.seedreceived = 0
global.mwcompleted = 0
global.lavastate = 0
global.timeofday = 0
i = 100
repeat (100)
{
    i -= 1
    global.metdead[i] = 0
}
i = 350
repeat (350)
{
    i -= 1
    global.event[i] = 0
}
global.save_room = 0
global.monstersleft = 55
global.monstersarea = 1
global.progress = 0
global.gametime = 0
global.deaths = 0
global.kills = 0
global.mapmarker = 0
global.mapmarkerx = 0
global.mapmarkery = 0
global.itemstaken = 0
i = 350
repeat (350)
{
    i -= 1
    global.item[i] = 0
}
i = 15
repeat (15)
{
    i -= 1
    global.inventory[i] = 0
}
global.inventory[1] = 1
i = 400
repeat (400)
{
    i -= 1
    global.multiItem[i] = 0
}
reset_logs_list()
reset_hints()
