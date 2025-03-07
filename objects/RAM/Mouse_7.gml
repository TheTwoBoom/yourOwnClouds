// Initialisierung
grabbed = false;
global.grabbing = false;
depth = -1;

// Falls der RAM auf einem Mainboard ist
if (place_meeting(x, y, Mainboard)) { 
    sprite_index = RAMTopSprite;
    x = Mainboard.x + 85;
    // Falls der RAM bereits in einem Slot ist, diesen speichern
    var current_slot = -1;
    for (var i = 1; i <= 8; i++) {
        if (global.mainboard.ram_slot[i] == id) {
            current_slot = i;
            break;
        }
    }

    // Falls der RAM noch keinen Slot hat, finde einen freien
    if (current_slot == -1) {
        for (var i = 1; i <= 8; i++) {
            if (global.mainboard.ram_slot[i] == "empty") {
                current_slot = i;
                global.mainboard.ram_slot[i] = id; // Belege den Slot
                break;
            }
        }
    }

    // Falls ein gültiger Slot gefunden wurde, setze die Y-Position entsprechend
    if (current_slot != -1) {
        global.ram_slot = current_slot;

        if (current_slot - 1 < 4) {
            y = Mainboard.y + (4 + (current_slot - 1) * 8);
        } else if (current_slot - 1 < 8){
            y = Mainboard.y + (61 + (current_slot - 1) * 8);
        }
    }
} else {
    // RAM wird entfernt, aber nur wenn er tatsächlich wegbewegt wurde
    sprite_index = RAMSideSprite;

    var removed = false;
    for (var i = 1; i <= 8; i++) {
        if (global.mainboard.ram_slot[i] == id) {
            global.mainboard.ram_slot[i] = "empty"; // Slot leeren
            removed = true;
            break;
        }
    }

    // Falls der RAM entfernt wurde, setzte den gespeicherten Slot zurück
    if (removed) {
        global.ram_slot = -1;
    }
}
