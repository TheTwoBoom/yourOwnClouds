if (position_meeting(mouse_x, mouse_y, id) & !global.grabbing) {
    grabbed = true;
    global.grabbing = true;
    depth = -10;
}