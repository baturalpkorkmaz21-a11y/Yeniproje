draw_self();
//hp barı
var bar_width = 25;
var bar_x = x - bar_width / 2;
var bar_y = y - 40;

// Arka plan (gri)
draw_set_color(c_gray);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + 2, false);

// Dolu kısım (kırmızı)
draw_set_color(c_red);
draw_rectangle(bar_x, bar_y, bar_x + (hp / 50) * bar_width, bar_y + 2, false);