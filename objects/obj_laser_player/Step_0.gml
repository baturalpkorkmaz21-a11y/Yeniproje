x += hsp;

if (place_meeting(x, y, obj_enemy)) {
    with (instance_place(x, y, obj_enemy)) {
        hp -= 20;
        hit_flash = 8;
        knockback_hsp = (obj_player.x < x) ? 6 : -6;
        if (hp <= 0) {
            instance_destroy(self);
        }
    }
    instance_destroy(other);
}

if (place_meeting(x, y, obj_platform)) {
    instance_destroy(self);
}

if (x < -50 || x > room_width + 50) {
    instance_destroy(self);
}