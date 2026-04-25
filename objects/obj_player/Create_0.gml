/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 09503B7B
/// @DnDInput : 11
/// @DnDArgument : "expr_2" "6"
/// @DnDArgument : "expr_3" "0.5"
/// @DnDArgument : "expr_4" "-12"
/// @DnDArgument : "expr_6" "100"
/// @DnDArgument : "expr_9" "100"
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "var_1" "vsp"
/// @DnDArgument : "var_2" "spd"
/// @DnDArgument : "var_3" "grv"
/// @DnDArgument : "var_4" "jump_spd"
/// @DnDArgument : "var_5" "jump_buffer"
/// @DnDArgument : "var_6" "hp_max"
/// @DnDArgument : "var_7" "invincible"
/// @DnDArgument : "var_8" "inv_timer"
/// @DnDArgument : "var_9" "hp"
/// @DnDArgument : "var_10" "knockback"
hsp = 0;
vsp = 0;
spd = 6;
grv = 0.5;
jump_spd = -12;
jump_buffer = 0;
hp_max = 100;
invincible = 0;
inv_timer = 0;
hp = 100;
knockback = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6584D258
/// @DnDInput : 4
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "expr_1" "25"
/// @DnDArgument : "var" "attack_range"
/// @DnDArgument : "var_1" "attack_damage"
/// @DnDArgument : "var_2" "attacking"
/// @DnDArgument : "var_3" "attacking_timer"
attack_range = 60;
attack_damage = 25;
attacking = 0;
attacking_timer = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C57E7BA
/// @DnDArgument : "code" "//kamera$(13_10)camera_set_view_target(view_camera[0], id);$(13_10)camera_set_view_speed(view_camera[0], 5, 5);"
//kamera
camera_set_view_target(view_camera[0], id);
camera_set_view_speed(view_camera[0], 5, 5);