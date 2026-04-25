/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4E481F50
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_set_color(c_red);$(13_10)draw_set_font(font_gameover);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(room_width / 2, room_height / 2 - 50, "GAME OVER");$(13_10)draw_set_color(c_white);$(13_10)draw_set_font(font_restart);$(13_10)draw_text(room_width / 2, room_height / 2 + 20, "Press any key to restart");$(13_10)"
/// @description Execute Code
draw_set_color(c_red);
draw_set_font(font_gameover);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2, room_height / 2 - 50, "GAME OVER");
draw_set_color(c_white);
draw_set_font(font_restart);
draw_text(room_width / 2, room_height / 2 + 20, "Press any key to restart");