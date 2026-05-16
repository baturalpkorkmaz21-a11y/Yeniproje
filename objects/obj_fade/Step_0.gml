fade -= 5;
if (fade <= 0) {
    fade = 0;
    instance_destroy(self);
}