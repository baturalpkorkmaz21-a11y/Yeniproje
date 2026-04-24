// Arka plan (boş bar)
draw_set_color(c_red);
draw_rectangle(10, 10, 110, 30, false);

// Dolu kısım
draw_set_color(c_lime);
draw_rectangle(10, 10, 10 + (hp / 3) * 100, 30, false);

// Yazı
draw_set_color(c_white);
draw_text(10, 35, "HP: " + string(hp));