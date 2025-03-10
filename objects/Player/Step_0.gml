
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, tilemap, true, true)) {
    move_and_collide(-hspeed, -vspeed, Player, 8);
    running = false;
}

if (running) {
    speed = 6;
} else {
    speed = 0;
}