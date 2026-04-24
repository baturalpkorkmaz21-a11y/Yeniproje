// Yerçekimi
vsp += grv;
if (place_meeting(x, y + vsp, obj_platform)) {
    while (!place_meeting(x, y + sign(vsp), obj_platform)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

// Oyuncu var mı kontrol et
var player_exists = instance_exists(obj_player);
if (player_exists) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    can_see_player = (dist <= sight_range) ? 1 : 0;
} else {
    can_see_player = 0;
}

// Dolaşma
var height_diff = player_exists ? abs(obj_player.y - y) : 999;
if (can_see_player == 0 || height_diff > 64) {
    move_timer++;
    if (move_timer >= move_change) {
        move_timer = 0;
        move_dir *= -1;
    }
    if (place_meeting(x + walk_spd * move_dir, y, obj_platform)) {
        move_dir *= -1;
        move_timer = 0;
    }
    if (!place_meeting(x + walk_spd * move_dir * 10, y + 32, obj_platform)) {
        move_dir *= -1;
        move_timer = 0;
    }
    x += walk_spd * move_dir;
}

// Görüyorsa ateş et
if (can_see_player == 1 && height_diff <= 64) {
    shoot_timer++;
    if (shoot_timer >= shoot_delay) {
        shoot_timer = 0;
        var eye_offset_x = (image_xscale == -1) ? -20 : 20;
        var eye_offset_y = -10;
        var laser = instance_create_layer(x + eye_offset_x, y + eye_offset_y, "Instances", obj_laser);
        laser.hsp = (obj_player.x < x) ? -5 : 5;
    }
} else {
    shoot_timer = 80;
}

// Sprite yönü
if (can_see_player == 0 || height_diff > 32) {
    image_xscale = move_dir;
} else {
    image_xscale = (obj_player.x < x) ? -1 : 1;
}

// Oyuncuya değince hasar ver
if (place_meeting(x, y, obj_player)) {
    if (obj_player.invincible == 0) {
        obj_player.hp--;
        obj_player.invincible = 1;
        if (obj_player.hp <= 0) {
            instance_destroy(obj_player);
        }
    }
}