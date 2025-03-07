// Initialisierung
grabbed = false;
global.grabbing = false;
depth = -1;

// Falls der HDD in einem ServerCase ist
if (place_meeting(x, y, ServerCase)) { 
    y = ServerCase.y + 508;
    sprite_index = HDDTopSprite;

    // Falls der HDD bereits in einem Slot ist, diesen speichern
    var current_slot = -1;
    for (var i = 1; i <= 7; i++) {
        if (global.mainboard.hdd_slot[i] == id) {
            current_slot = i;
            break;
        }
    }

    // Falls der HDD noch keinen Slot hat, finde einen freien
    if (current_slot == -1) {
        for (var i = 1; i <= 7; i++) {
            if (global.mainboard.hdd_slot[i] == "empty") {
                current_slot = i;
                global.mainboard.hdd_slot[i] = id; // Belege den Slot
                break;
            }
        }
    }

    // Falls ein gültiger Slot gefunden wurde, setze die Y-Position entsprechend
    if (current_slot != -1) {
        x = ServerCase.x + (current_slot - 1) * 21 + 9;
    }
} else {
    // HDD wird entfernt, aber nur wenn er tatsächlich wegbewegt wurde
    sprite_index = HDDSideSprite;

    var removed = false;
    for (var i = 1; i <= 7; i++) {
        if (global.mainboard.hdd_slot[i] == id) {
            global.mainboard.hdd_slot[i] = "empty"; // Slot leeren
            removed = true;
            break;
        }
    }
}