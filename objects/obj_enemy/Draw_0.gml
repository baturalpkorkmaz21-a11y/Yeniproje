draw_self();

if (hit_flash > 0) {
    gpu_set_blendmode(bm_add);
    draw_self();
    gpu_set_blendmode(bm_normal);
}

var bar_width = 25;
var bar_x = x - bar_width / 2;
var bar_y = y - 40;
draw_set_color(c_gray);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + 2, false);
draw_set_color(c_red);
draw_rectangle(bar_x, bar_y, bar_x + (hp / 50) * bar_width, bar_y + 2, false);