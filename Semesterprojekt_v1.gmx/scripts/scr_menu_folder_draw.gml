
//draw_sprite(sprite, subimg, x, y);
//draw_sprite_ext( sprite, subimg, x, y, xscale, yscale, rot, colour, alpha );


//cabinet                               sub  x    y   xsc ysc rot  col   alp
draw_sprite_ext(spr_menu_folder_cabinet, 0, 100, 100, 7.9, 7.9, 0, c_white, 1);

//folders
draw_sprite(spr_menu_folder_credits,   0, global.folder_x[0], global.folder_y[0] - (folder_y_plus[0] + folder_draw_offset));
draw_sprite(spr_menu_folder_customize, 0, global.folder_x[1], global.folder_y[1] - (folder_y_plus[1] + folder_draw_offset));
draw_sprite(spr_menu_folder_options,   0, global.folder_x[2], global.folder_y[2] - (folder_y_plus[2] + folder_draw_offset));
draw_sprite(spr_menu_folder_tutorial,  0, global.folder_x[3], global.folder_y[3] - (folder_y_plus[3] + folder_draw_offset));
draw_sprite(spr_menu_folder_start,     0, global.folder_x[4], global.folder_y[4] - (folder_y_plus[4] + folder_draw_offset));

//open drawer side
draw_sprite(spr_menu_folder_drawer, 0, -110, ((global.folder_height * 5) + folder_top_offset + (folder_sep_dist * 4) - 460));

//exit drawer
draw_sprite(spr_menu_folder_exit, 0, ((-150) + (folder_y_plus[5] / 4)), ((global.folder_height * 5) + folder_top_offset + (folder_sep_dist * 4) - 460) + (folder_y_plus[5] / 4));


