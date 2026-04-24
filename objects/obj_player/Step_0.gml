/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 727FF434
/// @DnDInput : 3
/// @DnDArgument : "expr" "(keyboard_check(vk_right) - keyboard_check(vk_left)) * spd"
/// @DnDArgument : "expr_1" "vsp+grv"
/// @DnDArgument : "expr_2" "place_meeting(x, y+1, obj_platform)"
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "var_1" "vsp"
/// @DnDArgument : "var_2" "ground"
hsp = (keyboard_check(vk_right) - keyboard_check(vk_left)) * spd;
vsp = vsp+grv;
ground = place_meeting(x, y+1, obj_platform);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F096054
/// @DnDArgument : "var" "ground"
/// @DnDArgument : "value" "1"
if(ground == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09C74CC5
	/// @DnDParent : 5F096054
	/// @DnDArgument : "expr" "keyboard_check_pressed(vk_space)"
	/// @DnDArgument : "var" "jump"
	jump = keyboard_check_pressed(vk_space);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 382E0117
	/// @DnDParent : 5F096054
	/// @DnDArgument : "var" "jump"
	/// @DnDArgument : "value" "1"
	if(jump == 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C2492DC
		/// @DnDParent : 382E0117
		/// @DnDArgument : "expr" "jumpspd"
		/// @DnDArgument : "var" "vsp"
		vsp = jumpspd;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 038F94F1
		/// @DnDParent : 382E0117
		variable = 0;}}

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