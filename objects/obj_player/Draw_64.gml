/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7EC77CFA
/// @DnDArgument : "code" "draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)draw_set_font(fnt_small);$(13_10)$(13_10)draw_set_color(c_gray);$(13_10)draw_rectangle(10, 10, 160, 30, false);$(13_10)$(13_10)draw_set_color(c_red);$(13_10)draw_rectangle(10, 10, 10 + (hp / hp_max) * 150, 30, false);$(13_10)$(13_10)draw_set_color(c_white);$(13_10)draw_text(10, 35, "HP: " + string(hp));"
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_small);

draw_set_color(c_gray);
draw_rectangle(10, 10, 160, 30, false);

draw_set_color(c_red);
draw_rectangle(10, 10, 10 + (hp / hp_max) * 150, 30, false);

draw_set_color(c_white);
draw_text(10, 35, "HP: " + string(hp));