grabbed = false;
global.grabbing = false;
depth = -1;
if (place_meeting(x, y, Mainboard)) { 
    global.mainboard.cpu = CPU.id;
    x = Mainboard.x + 84
    y = Mainboard.y + 34
} else {
    global.mainboard.cpu = "empty";
}
