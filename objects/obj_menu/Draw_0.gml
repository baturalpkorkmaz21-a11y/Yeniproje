draw_set_font(fnt_big);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(room_width / 2 - 10, room_height / 2 - 0 , "TEST");

draw_set_font(fnt_small);
draw_text(room_width / 2 - 10, room_height / 2 + 150, "Press any key to start");

//kararma
draw_set_alpha(fade / 255);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);