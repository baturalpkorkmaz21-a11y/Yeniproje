if (invincible == 0) {
    hp -= 10;
    if (hp <= 0) {
        hp = 0;
        room_goto(rm_gameover);
        exit;
    }
    
    invincible = 1;
    inv_timer = 0;
    knockback = 1;
    
    var knock_dir = (x < other.x) ? -1 : 1;
    knockback_hsp = knock_dir * 20;
    vsp = -6;
}