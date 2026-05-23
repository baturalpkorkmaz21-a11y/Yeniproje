if (invincible == 1 && (inv_timer mod 4) < 2) {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
} else if (invincible == 0 || (inv_timer mod 4) >= 2) {
    draw_self();
}