if (invincible == 0) {
    hp -= 1;
    invincible = 1;
    inv_timer = 0;
    knockback = 20;
    if (x < other.x) {
        hsp = -8;
    } else {
        hsp = 8;
    }
    vsp = -5;
    if (hp <= 0) {
        room_goto(rm_gameover);
    }
}