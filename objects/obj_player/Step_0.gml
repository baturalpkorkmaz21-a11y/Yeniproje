/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 487F0D5B
/// @DnDArgument : "code" "if (knockback == 0) {$(13_10)    hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;$(13_10)} else {$(13_10)    knockback--;$(13_10)}$(13_10)$(13_10)vsp += grv;$(13_10)$(13_10)if (keyboard_check_pressed(vk_space)) {$(13_10)    jump_buffer = 30;$(13_10)}$(13_10)$(13_10)if (jump_buffer > 0) {$(13_10)    jump_buffer--;$(13_10)}$(13_10)$(13_10)var on_ground = place_meeting(x, y+1, obj_platform);$(13_10)$(13_10)if (on_ground && jump_buffer > 0) {$(13_10)    vsp = jump_spd;$(13_10)    jump_buffer = 0;$(13_10)}$(13_10)$(13_10)if (place_meeting(x, y+vsp, obj_platform)) {$(13_10)    vsp = 0;$(13_10)}$(13_10)$(13_10)if (place_meeting(x+hsp, y, obj_platform)) {$(13_10)    hsp = 0;$(13_10)}$(13_10)$(13_10)x += hsp;$(13_10)y += vsp;$(13_10)$(13_10)if (invincible == 1) {$(13_10)    inv_timer++;$(13_10)    if (inv_timer >= 60) {$(13_10)        invincible = 0;$(13_10)        inv_timer = 0;$(13_10)    }$(13_10)}"
if (knockback == 0) {
    hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;
} else {
    knockback--;
}

vsp += grv;

if (keyboard_check_pressed(vk_space)) {
    jump_buffer = 30;
}

if (jump_buffer > 0) {
    jump_buffer--;
}

var on_ground = place_meeting(x, y+1, obj_platform);

if (on_ground && jump_buffer > 0) {
    vsp = jump_spd;
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