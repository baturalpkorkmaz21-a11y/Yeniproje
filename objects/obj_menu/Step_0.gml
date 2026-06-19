if (keyboard_check_pressed(vk_anykey) && fading == 0) {
    fading = 1;
}

if (fading == 1) {
    fade += 5;
    if (fade >= 255) {
        room_goto(rm_game);
    }
}