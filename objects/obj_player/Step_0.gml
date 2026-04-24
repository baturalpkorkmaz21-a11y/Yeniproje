/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4DCE9439
/// @DnDArgument : "key" "ord("D")"
var l4DCE9439_0;l4DCE9439_0 = keyboard_check(ord("D"));if (l4DCE9439_0){	/// @DnDAction : YoYo Games.Common.Variable
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
/// @DnDArgument : "key" "ord("A")"
var l13A2FF86_0;l13A2FF86_0 = keyboard_check(ord("A"));if (l13A2FF86_0){	/// @DnDAction : YoYo Games.Common.Variable
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
/// @DnDArgument : "key" "ord("W")"
var l4ADA6E06_0;l4ADA6E06_0 = keyboard_check(ord("W"));if (l4ADA6E06_0){	/// @DnDAction : YoYo Games.Common.Variable
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
/// @DnDArgument : "key" "vk_nokey"
var l162E7237_0;l162E7237_0 = keyboard_check(vk_nokey);if (l162E7237_0){	/// @DnDAction : YoYo Games.Common.Variable
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

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7B5F4AA4
/// @DnDArgument : "key" "ord("D")"
/// @DnDArgument : "not" "1"
var l7B5F4AA4_0;l7B5F4AA4_0 = keyboard_check(ord("D"));if (!l7B5F4AA4_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 380F1C4A
	/// @DnDParent : 7B5F4AA4
	/// @DnDArgument : "var" "last_dir"
	/// @DnDArgument : "value" ""right""
	if(last_dir == "right"){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 35BFAA9B
		/// @DnDParent : 380F1C4A
		/// @DnDArgument : "spriteind" "spr_player"
		/// @DnDSaveInfo : "spriteind" "spr_player"
		sprite_index = spr_player;
		image_index = 0;}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4C3FFFDA
/// @DnDArgument : "key" "ord("A")"
/// @DnDArgument : "not" "1"
var l4C3FFFDA_0;l4C3FFFDA_0 = keyboard_check(ord("A"));if (!l4C3FFFDA_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62151AEC
	/// @DnDParent : 4C3FFFDA
	/// @DnDArgument : "var" "last_dir"
	if(last_dir == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 20969B4A
		/// @DnDParent : 62151AEC
		/// @DnDArgument : "spriteind" "spr_player"
		/// @DnDSaveInfo : "spriteind" "spr_player"
		sprite_index = spr_player;
		image_index = 0;}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3810C4DB
/// @DnDArgument : "key" "ord("W")"
/// @DnDArgument : "not" "1"
var l3810C4DB_0;l3810C4DB_0 = keyboard_check(ord("W"));if (!l3810C4DB_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B4428D1
	/// @DnDParent : 3810C4DB
	/// @DnDArgument : "var" "last_dir"
	if(last_dir == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3845EE59
		/// @DnDParent : 5B4428D1
		/// @DnDArgument : "spriteind" "spr_player"
		/// @DnDSaveInfo : "spriteind" "spr_player"
		sprite_index = spr_player;
		image_index = 0;}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7DE25917
/// @DnDArgument : "key" "vk_nokey"
/// @DnDArgument : "not" "1"
var l7DE25917_0;l7DE25917_0 = keyboard_check(vk_nokey);if (!l7DE25917_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5742FEAA
	/// @DnDParent : 7DE25917
	/// @DnDArgument : "var" "last_dir"
	if(last_dir == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2191EF74
		/// @DnDParent : 5742FEAA
		/// @DnDArgument : "spriteind" "spr_player"
		/// @DnDSaveInfo : "spriteind" "spr_player"
		sprite_index = spr_player;
		image_index = 0;}}