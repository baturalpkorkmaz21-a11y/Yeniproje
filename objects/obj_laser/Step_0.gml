/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4B7D7A4A
/// @DnDInput : 2
/// @DnDArgument : "expr" "x - speed"
/// @DnDArgument : "expr_1" "place_meeting(x, y, obj_player)"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "hit"
x = x - speed;
hit = place_meeting(x, y, obj_player);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 63E3A460
/// @DnDArgument : "var" "hit"
/// @DnDArgument : "value" "1"
if(hit == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D1DF3DB
	/// @DnDParent : 63E3A460
	/// @DnDArgument : "var" "obj_player.invincible"
	if(obj_player.invincible == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3799341B
		/// @DnDInput : 2
		/// @DnDParent : 1D1DF3DB
		/// @DnDArgument : "expr" "obj_player.hp - 1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "(obj_player.hp)"
		/// @DnDArgument : "var_1" "(obj_player.invincible)"
		(obj_player.hp) = obj_player.hp - 1;
		(obj_player.invincible) = 1;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 31812B2D
		/// @DnDParent : 1D1DF3DB
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BBE1A2C
		/// @DnDParent : 1D1DF3DB
		/// @DnDArgument : "var" "obj_player.hp"
		/// @DnDArgument : "op" "1"
		if(obj_player.hp < 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 30456F19
			/// @DnDParent : 5BBE1A2C
			instance_destroy();}}}