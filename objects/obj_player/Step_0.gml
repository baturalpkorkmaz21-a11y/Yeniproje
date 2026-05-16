if (!variable_instance_exists(id, "attack_timer")) {
    attack_timer = 0;
    attacking = 0;
}

if (knockback == 0) {
    hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;
} else {
    knockback--;
}

vsp += grv;

if (keyboard_check(ord("D"))) image_xscale = 1;
if (keyboard_check(ord("A"))) image_xscale = -1;

if (keyboard_check_pressed(vk_space)) {
    jump_buffer = 30;
}

if (jump_buffer > 0) {
    jump_buffer--;
}

if (hsp != 0) {
    sprite_index = spr_player_walk;
} else {
    sprite_index = spr_player_idle;
}

var on_ground = place_meeting(x, y+1, obj_platform);
if (on_ground && jump_buffer > 0) {
    vsp = jumpspd;
    jump_buffer = 0;
}

if (place_meeting(x, y+vsp, obj_platform)) {
    vsp = 0;
}

if (place_meeting(x+hsp, y, obj_platform)) {
    hsp = 0;
}

x += hsp;
y += vsp;

if (invincible == 1) {
    inv_timer++;
    if (inv_timer >= 60) {
        invincible = 0;
        inv_timer = 0;
    }
}

// vuruş
if (keyboard_check_pressed(ord("O")) && attack_timer == 0) {
    attack_timer = 100;
    var effect = instance_create_layer(x + 30 * image_xscale, y, "Instances", obj_attack_effect);
    effect.image_xscale = image_xscale;
    var enemy = instance_place(x + attack_range * image_xscale, y, obj_enemy);
    if (enemy != noone) {
        enemy.hp -= attack_damage;
        if (enemy.hp <= 0) {
            instance_destroy(enemy);
        }
    }
}

if (attack_timer > 0) {
    attack_timer--;
}

// kamera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var dead_x = 150;
var dead_y = 100;
if (x > cam_x + 683 + dead_x) cam_x = x - 683 - dead_x;
if (x < cam_x + 683 - dead_x) cam_x = x - 683 + dead_x;
if (y > cam_y + 384 + dead_y) cam_y = y - 384 - dead_y;
if (y < cam_y + 384 - dead_y) cam_y = y - 384 + dead_y;
camera_set_view_pos(view_camera[0], cam_x, cam_y);