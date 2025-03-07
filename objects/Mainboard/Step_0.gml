if (grabbed) {
    x = mouse_x - sprite_width / 2;
    y = mouse_y - sprite_height / 2;
    // Bewege alle RAM-Sticks mit
    for (var i = 1; i <= 8; i++) {
        if (global.mainboard.ram_slot[i] != "empty") {
            var ram = global.mainboard.ram_slot[i];
            if (instance_exists(ram)) {
                ram.x = x + 85; // Gleiche X-Position
                ram.depth = -10;
                if (i <= 4) {
                    ram.y = y + (4 + (i - 1) * 8);
                } else {
                    ram.y = y + (61 + (i - 1) * 8);
                }
            }
        }
    }

    // Bewege CPU mit
    if (global.mainboard.cpu != "empty") {
        if (instance_exists(global.mainboard.cpu.id)) {
                global.mainboard.cpu.depth = -10;
                global.mainboard.cpu.x = x + 84;
                global.mainboard.cpu.y = y + 34;
            }
    }
}