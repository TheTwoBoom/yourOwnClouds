if (position_meeting(mouse_x, mouse_y, id) & !global.grabbing) {
    sprite_index = RAMSideSprite;
    grabbed = true;
    global.grabbing = true;
    depth = -10;
}