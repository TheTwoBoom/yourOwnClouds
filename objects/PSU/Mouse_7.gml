// Initialisierung
grabbed = false;
global.grabbing = false;
depth = -1;

// Falls der Fan in einem ServerCase ist
if (place_meeting(x, y, ServerCase)) { 
    y = ServerCase.y + 443;

    // Falls der Fan bereits in einem Slot ist, diesen speichern
    var current_slot = -1;
    for (var i = 1; i <= 2; i++) {
        if (global.mainboard.psu_slot[i] == id) {
            current_slot = i;
            break;
        }
    }

    // Falls der Fan noch keinen Slot hat, finde einen freien
    if (current_slot == -1) {
        for (var i = 1; i <= 2; i++) {
            if (global.mainboard.psu_slot[i] == "empty") {
                current_slot = i;
                global.mainboard.psu_slot[i] = id; // Belege den Slot
                break;
            }
        }
    }

    // Falls ein gültiger Slot gefunden wurde, setze die Y-Position entsprechend
    if (current_slot != -1) {
        x = ServerCase.x + (current_slot - 1) * 72 + 164;
    }
} else {
    // Fan wird entfernt, aber nur wenn er tatsächlich wegbewegt wurde
    var removed = false;
    for (var i = 1; i <= 2; i++) {
        if (global.mainboard.psu_slot[i] == id) {
            global.mainboard.psu_slot[i] = "empty"; // Slot leeren
            removed = true;
            break;
        }
    }
}