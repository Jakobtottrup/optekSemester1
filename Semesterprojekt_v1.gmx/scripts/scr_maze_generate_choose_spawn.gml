//floor is used instead of round, because the "round" function doesn't round as wanted.
//gamemakers 'round'-function rounds even numbers down and uneven numbers up.
//to make sure the numbers are rounded as wanted, the value is added 0.5, then floored.
maze_shortest_distance = (floor(0.5 + (((maze_longest_distance / 100) * (100 - spawn_min_dist_goal)) * 10))) / 10;

player_spawnpoint_x = 0;
player_spawnpoint_y = 0;

while(player_spawnpoint_x == 0 && player_spawnpoint_y == 0) {
    // 50/50 chance
    player_spawndir = irandom(1);
    // 0 = ver, 1 = hor
    if (player_spawndir) {
        //search for horizontal spawn
        
        i = floor(random(maze_width - 1));
        j = floor(random(maze_height));
        
        /*
        o x o x o x o
        o o o o o o o
        o x o x o x o
        o o o o o o o
        o x o x o x o
        */
        
        //if a random position is above minimum wanted distance
        if (maze_dist_data[(i * 2) + 1, j * 2] > maze_shortest_distance) {
            //set player spawn to found position
            player_spawnpoint_x = (i * 2) + 1;
            player_spawnpoint_y = (j * 2);
        }
    } else {
        //search for vertical spawn
        i = floor(random(maze_width));
        j = floor(random(maze_height - 1));
        
        /*
        o o o o o o o
        x o x o x o x
        o o o o o o o
        x o x o x o x
        o o o o o o o
        */
        
        //if a random position is above minimum wanted distance
        if (maze_dist_data[i * 2, (j * 2) + 1] > maze_shortest_distance) {
            //set player spawn to found position
            player_spawnpoint_x = (i * 2);
            player_spawnpoint_y = (j * 2) + 1;
        }
    }
}
