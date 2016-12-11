intro_page = 0;

intro_fade_speed = 0.02;
intro_scale_speed = 0.002;

scr_intro_manuskript();



//reset fade
for (i = 0; i < array_length_1d(intro_manus); i++) {
    intro_fade[i] = 0;
}
