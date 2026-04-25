/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 330323B0
/// @DnDArgument : "expr" "keyboard_check(vk_anykey)"
/// @DnDArgument : "var" "restart"
restart = keyboard_check(vk_anykey);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71768DCF
/// @DnDArgument : "var" "restart"
/// @DnDArgument : "value" "1"
if(restart == 1){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7C0C00CD
	/// @DnDParent : 71768DCF
	/// @DnDArgument : "room" "rm_game"
	/// @DnDSaveInfo : "room" "rm_game"
	room_goto(rm_game);}