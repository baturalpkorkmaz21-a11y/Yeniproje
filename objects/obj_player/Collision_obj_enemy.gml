if (invincible == 0) {
    hp -= 5;
    invincible = 1;
    inv_timer = 0;
    knockback = 20;
    if (x < other.x) {
        hsp = -6;
    } else {
        hsp = 6;
    }
    vsp = -8;
    if (hp <= 0) {
        room_goto(rm_gameover);
    }
}