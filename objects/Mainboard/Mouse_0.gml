if (position_meeting(mouse_x, mouse_y, id) & !global.grabbing & keyboard_check(vk_lshift)) {
    image_angle = 0;
    grabbed = true;
    global.grabbing = true;
    depth = -5;
}