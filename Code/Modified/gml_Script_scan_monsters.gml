if (!instance_exists(oScanMonster))
{
    scan = instance_create(0, 0, oScanMonster)
    scan.ammount = argument0
    scan.eventno = argument1
}
