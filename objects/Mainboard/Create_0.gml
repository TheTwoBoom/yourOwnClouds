grabbed = false;
global.mainboard = {};
global.grabbing = false;
global.mainboard.cpu = "empty";
for (i=1; i<=8;i++) {
    global.mainboard.ram_slot[i] = "empty";
}
for (i=1; i<=7;i++) {
    global.mainboard.hdd_slot[i] = "empty";
}
for (i=1; i<=4;i++) {
    global.mainboard.fan_slot[i] = "empty";
}
for (i=1; i<=2;i++) {
    global.mainboard.psu_slot[i] = "empty";
}
