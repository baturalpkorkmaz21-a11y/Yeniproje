x += hsp;

if (place_meeting(x, y, obj_player)) {
    if (obj_player.invincible == 0) {
        obj_player.hp--;
        obj_player.invincible = 1;
        if (obj_player.hp <= 0) {
            room_goto(rm_gameover);
        }
    }
    instance_destroy(self);
}

if (place_meeting(x, y, obj_platform)) {
    instance_destroy(self);
}

if (x < -50 || x > room_width + 50) {
    instance_destroy(self);
}