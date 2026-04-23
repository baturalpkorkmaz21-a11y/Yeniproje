/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4DCE9439
/// @DnDArgument : "key" "vk_right"
var l4DCE9439_0;l4DCE9439_0 = keyboard_check(vk_right);if (l4DCE9439_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22FE2A64
	/// @DnDInput : 2
	/// @DnDParent : 4DCE9439
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" ""right""
	/// @DnDArgument : "var" "hspeed"
	/// @DnDArgument : "var_1" "last_dir"
	hspeed += 4;
	last_dir = "right";}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 13A2FF86
/// @DnDArgument : "key" "vk_left"
var l13A2FF86_0;l13A2FF86_0 = keyboard_check(vk_left);if (l13A2FF86_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CABB7F1
	/// @DnDInput : 2
	/// @DnDParent : 13A2FF86
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" ""left""
	/// @DnDArgument : "var" "hspeed"
	/// @DnDArgument : "var_1" "last_dir"
	hspeed += -4;
	last_dir = "left";}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4ADA6E06
/// @DnDArgument : "key" "vk_up"
var l4ADA6E06_0;l4ADA6E06_0 = keyboard_check(vk_up);if (l4ADA6E06_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31F60508
	/// @DnDInput : 2
	/// @DnDParent : 4ADA6E06
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" ""up""
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "var_1" "last_dir"
	vspeed += 4;
	last_dir = "up";}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 162E7237
/// @DnDArgument : "key" "vk_down"
var l162E7237_0;l162E7237_0 = keyboard_check(vk_down);if (l162E7237_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2865969F
	/// @DnDInput : 2
	/// @DnDParent : 162E7237
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" ""down""
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "var_1" "last_dir"
	vspeed += -4;
	last_dir = "down";}