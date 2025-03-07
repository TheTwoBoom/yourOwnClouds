if (position_meeting(mouse_x, mouse_y, id) & !global.grabbing) {
    sprite_index = FanSideSprite;
    grabbed = true;
    global.grabbing = true;
    depth = -10;
}