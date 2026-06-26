if (global.hitstop > 0) {
    global.hitstop--;
    exit;
}

if (knockback == 0 && is_shooting == 0) {
    hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;
} else if (knockback == 0) {
    hsp = 0;
}

if (knockback == 1) {
    hsp = lerp(hsp, knockback_hsp, 0.3);
    knockback_hsp *= 0.8;
    if (abs(knockback_hsp) < 0.5) {
        knockback_hsp = 0;
        knockback = 0;
    }
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

var on_ground = place_meeting(x, y+1, obj_platform);
var on_ground = place_meeting(x, y+1, obj_zemin);

if (on_ground && jump_buffer > 0) {
    vsp = jumpspd;
    jump_buffer = 0;
}

if (place_meeting(x, y+vsp, obj_platform)) {
    while (!place_meeting(x, y+sign(vsp), obj_platform)) {
        y += sign(vsp);
    }
    vsp = 0;
}
if (place_meeting(x, y+vsp, obj_zemin)) {
    while (!place_meeting(x, y+sign(vsp), obj_zemin)) {
        y += sign(vsp);
    }
    vsp = 0;
}

if (place_meeting(x+hsp, y, obj_platform)) {
    while (!place_meeting(x+sign(hsp), y, obj_platform)) {
        x += sign(hsp);
    }
    hsp = 0;
}
if (place_meeting(x+hsp, y, obj_zemin)) {
    while (!place_meeting(x+sign(hsp), y, obj_zemin)) {
        x += sign(hsp);
    }
    hsp = 0;
}

x += hsp;
y += vsp;

// sprite belirleme
if (!on_ground) {
    sprite_index = spr_player_jumping;
    if (image_index >= image_number - 1) {
        image_index = image_number - 1;
        image_speed = 0;
    }
} else if (sprite_index == spr_player_jumping) {
    sprite_index = spr_player_landing;
    image_index = 0;
    image_speed = 1;
} else if (sprite_index == spr_player_landing) {
    if (image_index >= image_number - 1) {
        if (hsp != 0) {
            sprite_index = spr_player_walking;
        } else {
            sprite_index = spr_player_idle;
        }
        image_speed = 1;
    }
} else {
    if (hsp != 0) {
        sprite_index = spr_player_walking;
    } else {
        sprite_index = spr_player_idle;
    }
    image_speed = 1;
}

if (keyboard_check_pressed(vk_space) && on_ground) {
    sprite_index = spr_player_jumping;
    image_index = 0;
    image_speed = 1;
}

if (invincible == 1) {
    inv_timer++;
    if (inv_timer >= 70) {
        invincible = 0;
        inv_timer = 0;
    }
}

if (keyboard_check_pressed(ord("O")) && attack_timer == 0 && on_ground) {
    attack_timer = 80;
    is_shooting = 1;
    var laser = instance_create_layer(x, y, "Instances", obj_laser_player);
    laser.hsp = (image_xscale == -1) ? -10 : 10;
}

if (attack_timer > 0) {
    attack_timer--;
}

if (is_shooting == 1 && attack_timer <= 70) {
    is_shooting = 0;
}

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var dead_x = 150;
var dead_y = 100;
if (x > cam_x + 683 + dead_x) cam_x = x - 683 - dead_x;
if (x < cam_x + 683 - dead_x) cam_x = x - 683 + dead_x;
if (y > cam_y + 384 + dead_y) cam_y = y - 384 - dead_y;
if (y < cam_y + 384 - dead_y) cam_y = y - 384 + dead_y;
camera_set_view_pos(view_camera[0], cam_x, cam_y);