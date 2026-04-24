/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 727FF434
/// @DnDInput : 3
/// @DnDArgument : "expr" "(keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd"
/// @DnDArgument : "expr_1" "vsp+grv"
/// @DnDArgument : "expr_2" "keyboard_check_pressed(vk_space)"
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "var_1" "vsp"
/// @DnDArgument : "var_2" "pressed"
hsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;
vsp = vsp+grv;
pressed = keyboard_check_pressed(vk_space);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32E5491F
/// @DnDArgument : "var" "pressed"
/// @DnDArgument : "value" "1"
if(pressed == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E9407B0
	/// @DnDParent : 32E5491F
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "var" "jump_buffer"
	jump_buffer = 10;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E862D8E
/// @DnDArgument : "expr" "place_meeting(x, y+1, obj_platform)"
/// @DnDArgument : "var" "on_ground"
on_ground = place_meeting(x, y+1, obj_platform);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AC0753B
/// @DnDArgument : "var" "on_ground"
/// @DnDArgument : "value" "1"
if(on_ground == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 588D28B7
	/// @DnDParent : 6AC0753B
	/// @DnDArgument : "var" "jump_buffer"
	/// @DnDArgument : "op" "2"
	if(jump_buffer > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1CD05952
		/// @DnDInput : 2
		/// @DnDParent : 588D28B7
		/// @DnDArgument : "expr" "jumpspd"
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "var_1" "jump_buffer"
		vsp = jumpspd;
		jump_buffer = 0;}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46101C04
/// @DnDInput : 2
/// @DnDArgument : "expr" "place_meeting(x, y+vsp, obj_platform)"
/// @DnDArgument : "expr_1" "place_meeting(x+hsp, y, obj_platform)"
/// @DnDArgument : "var" "collision_v"
/// @DnDArgument : "var_1" "collision_h"
collision_v = place_meeting(x, y+vsp, obj_platform);
collision_h = place_meeting(x+hsp, y, obj_platform);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6788C8D5
/// @DnDArgument : "var" "collision_v"
/// @DnDArgument : "value" "1"
if(collision_v == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60228290
	/// @DnDParent : 6788C8D5
	/// @DnDArgument : "var" "vsp"
	vsp = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 043AD812
/// @DnDArgument : "var" "collision_h"
/// @DnDArgument : "value" "1"
if(collision_h == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55AF2649
	/// @DnDParent : 043AD812
	/// @DnDArgument : "var" "hsp"
	hsp = 0;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C6B11B5
/// @DnDInput : 2
/// @DnDArgument : "expr" "x + hsp"
/// @DnDArgument : "expr_1" "y + vsp"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = x + hsp;
y = y + vsp;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 383B9646
/// @DnDArgument : "var" "invincible"
/// @DnDArgument : "value" "1"
if(invincible == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68190B33
	/// @DnDParent : 383B9646
	/// @DnDArgument : "expr" "inv_timer + 1"
	/// @DnDArgument : "var" "inv_timer"
	inv_timer = inv_timer + 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D0C0140
	/// @DnDParent : 383B9646
	/// @DnDArgument : "var" "inv_timer"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "60"
	if(inv_timer >= 60){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12C58B34
		/// @DnDInput : 2
		/// @DnDParent : 2D0C0140
		/// @DnDArgument : "var" "invincible"
		/// @DnDArgument : "var_1" "inv_timer"
		invincible = 0;
		inv_timer = 0;}}