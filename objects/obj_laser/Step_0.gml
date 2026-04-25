x += hsp;

// Oyuncuya çarpınca
if (place_meeting(x, y, obj_player)) {
    if (obj_player.invincible == 0) {
        obj_player.hp--;
        obj_player.invincible = 1;
        if (obj_player.hp <= 0) {
            instance_destroy(obj_player);
        }
    }
    instance_destroy(self);
}

// Platforma çarpınca
if (place_meeting(x, y, obj_platform)) {
    instance_destroy(self);
}

// Ekrandan çıkınca
if (x < -50 || x > room_width + 50) {
    instance_destroy(self);
}
