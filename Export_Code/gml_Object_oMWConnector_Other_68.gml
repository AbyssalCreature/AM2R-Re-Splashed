var type_event, ip, _buffer, receivedString, result, newline, itemMap, itemList, msg, returnMap, command, locationsMap, location, locationset, checkList, i, itemsList, missilecount, supercount, pbcount, etankcount, item, prevtanks, file, receivedanything, tosstrapcount, shorttrapcount, emptrapcount, ohkotrapcount, touhoutrapcount, floodtrapcount;
type_event = ds_map_find_value(async_load, "type")
ip = ds_map_find_value(async_load, "ip")
switch type_event
{
    case 1:
        socket = ds_map_find_value(async_load, "socket")
        popup_text("AP Connected")
        break
    case 3:
        newline = "
"
        _buffer = ds_map_find_value(async_load, "buffer")
        receivedString = buffer_read(_buffer, buffer_string)
        itemMap = json_decode(receivedString)
        command = ds_map_find_value(itemMap, "cmd")
        locationset = 0
        if (command == "locations")
        {
            locationset = 1
            locationsMap = ds_map_find_value(itemMap, "items")
            global.dnacount = real(ds_map_find_value(itemMap, "metroids"))
            location = ds_map_find_first(locationsMap)
            while (!is_undefined(location))
            {
                global.multiItem[real(location)] = real(ds_map_find_value(locationsMap, location))
                location = ds_map_find_next(locationsMap, location)
            }
            popup_text("Seed Received")
            global.seedreceived = 1
        }
        else if (command == "items" && instance_exists(oCharacter))
        {
            receivedanything = 0
            missilecount = 0
            supercount = 0
            pbcount = 0
            etankcount = 0
            floodtrapcount = 0
            tosstrapcount = 0
            shorttrapcount = 0
            emptrapcount = 0
            ohkotrapcount = 0
            touhoutrapcount = 0
            prevtanks = global.dnatanks
            global.dnatanks = 0
            itemsList = ds_map_find_value(itemMap, "items")
            for (i = 0; i < ds_list_size(itemsList); i++)
            {
                item = ds_list_find_value(itemsList, i)
                if (item < 15 && global.inventory[item] == 0)
                {
                    with (instance_create((oCharacter.x - 8), (oCharacter.y - 8), oMetroidItem))
                    {
                        remoteItem = 1
                        multiItem = item
                        itemid = -1
                        visible = false
                        active = 1
                        skip = 1
                    }
                    receivedanything = 1
                }
                else if (item == 15)
                    missilecount++
                else if (item == 16)
                    supercount++
                else if (item == 17)
                    etankcount++
                else if (item == 18)
                    pbcount++
                else if (item == 19)
                    global.dnatanks++
                else if (item == 21)
                    floodtrapcount++
                else if (item == 22)
                    tosstrapcount++
                else if (item == 23)
                    shorttrapcount++
                else if (item == 24)
                    emptrapcount++
                else if (item == 25)
                    ohkotrapcount++
                else if (item == 26)
                    touhoutrapcount++
            }
            if (prevtanks != global.dnatanks)
            {
                receivedanything = 1
                check_areaclear()
            }
            if (etankcount != global.etanks)
            {
                receivedanything = 1
                global.etanks = etankcount
                global.maxhealth = (99 + ((global.etanks * 100) * oControl.mod_etankhealthmult))
                global.playerhealth = global.maxhealth
            }
            if (missilecount != global.mtanks)
            {
                receivedanything = 1
                global.mtanks = missilecount
                if (global.difficulty < 2)
                    global.maxmissiles = (oControl.mod_Mstartingcount + (global.mtanks * 5))
                else
                    global.maxmissiles = (oControl.mod_Mstartingcount + (global.mtanks * 2))
                global.missiles = global.maxmissiles
            }
            if (supercount != global.stanks)
            {
                receivedanything = 1
                global.stanks = supercount
                if (global.difficulty < 2)
                    global.maxsmissiles = (global.stanks * 2)
                else
                    global.maxsmissiles = global.stanks
                global.smissiles = global.maxsmissiles
            }
            if (pbcount != global.ptanks)
            {
                receivedanything = 1
                global.ptanks = pbcount
                if (global.difficulty < 2)
                    global.maxpbombs = (global.ptanks * 2)
                else
                    global.maxpbombs = global.ptanks
                global.pbombs = global.maxpbombs
            }
            if ((floodtrapcount - global.floodtraps) > 0)
            {
                if (global.floodtraptimer <= 0)
                    global.floodstarttimer = 180
                global.floodtraptimer += (1800 * (floodtrapcount - global.floodtraps))
                screen_shake(30, 6)
                sfx_play(sndRobotExpl)
                popup_text("Pipe Burst Detected")
            }
            if ((tosstrapcount - global.tosstraps) > 0)
            {
                popup_text("TOSS Inbound")
                receivedanything = 1
                global.tossforce += ((tosstrapcount - global.tosstraps) * 30)
                for (i = 0; i < (tosstrapcount - global.tosstraps); i++)
                    global.tosstraptimer += irandom_range(120, 2400)
            }
            if ((shorttrapcount - global.shorttraps) > 0)
            {
                receivedanything = 1
                global.shorttraptimer += (1800 * (shorttrapcount - global.shorttraps))
                popup_text("Beam Energy Low")
            }
            if ((emptrapcount - global.emptraps) > 0)
            {
                receivedanything = 1
                global.emptraptimer += (1800 * (emptrapcount - global.emptraps))
                popup_text("Weapon Systems Disabled")
            }
            if ((ohkotrapcount - global.ohkotraps) > 0)
            {
                receivedanything = 1
                global.ohkotraptimer += (1800 * (ohkotrapcount - global.ohkotraps))
                popup_text("Energy Shield Update Installing")
            }
            if ((touhoutrapcount - global.touhoutraps) > 0)
            {
                receivedanything = 1
                global.touhoutraptimer += (900 * (touhoutrapcount - global.touhoutraps))
                popup_text("Bullet Hell Begin")
            }
            global.touhoutraps = touhoutrapcount
            global.ohkotraps = ohkotrapcount
            global.floodtraps = floodtrapcount
            global.tosstraps = tosstrapcount
            global.shorttraps = shorttrapcount
            global.emptraps = emptrapcount
            if receivedanything
                sfx_play(sndMessage)
        }
        returnMap = ds_map_create()
        checkList = ds_list_create()
        for (i = 0; i < 350; i++)
        {
            if (global.item[i] == 1)
                ds_list_add(checkList, i)
        }
        for (i = 0; i < 46; i++)
        {
            if (global.metdead[i] == 1)
                ds_list_add(checkList, (i + 310))
        }
        ds_map_add_list(returnMap, "Items", checkList)
        ds_map_add(returnMap, "SlotName", global.slotName)
        ds_map_add(returnMap, "SlotPass", global.slotPass)
        ds_map_add(returnMap, "SeedReceived", global.seedreceived)
        ds_map_add(returnMap, "GameCompleted", global.mwcompleted)
        buffer = buffer_create(1024, buffer_grow, 1)
        buffer_seek(buffer, buffer_seek_start, 0)
        buffer_write(buffer, buffer_text, json_encode(returnMap))
        buffer_write(buffer, buffer_text, newline)
        result = network_send_raw(socket, buffer, buffer_tell(buffer))
        buffer_delete(buffer)
        ds_map_destroy(itemMap)
        ds_map_destroy(returnMap)
        break
}

