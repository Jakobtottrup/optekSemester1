
/*
This script finds the exact distance to a goal from any position on the map
using dijkstra's shortest path algorithm
*/


//create new empty maze data structure. Every position is set to infinity (-1)
for (i = 0; i < ((maze_width*2)-1); i++) {
    for (j = 0; j < ((maze_height*2)-1); j++) {
        maze_dist_data[i, j] = -1;
    }
}

/*
-1 -1 -1
-1 -1 -1
-1 -1 -1
*/

//set all goal position to 0
for (i = 0; i < maze_num_goals; i++) {
    maze_dist_data[maze_goal_coor_x[i], maze_goal_coor_y[i]] = 0;
}

/*
-1 -1  0
 0 -1 -1
-1 -1 -1
*/


  //***********************//
 //**** run algorythm ****//
//***********************//

//this variable is set to false before each run
//and set to true every time there is an update

//the algorytm will therefore run until there
//are no more updates to the maze structure
distance_updated = true;

travel_cost = 1;


//run until there are no more updates
while(distance_updated) {
    distance_updated = false;
    
    //for each position in maze
    for (i = 0; i < ((maze_width*2)-1); i++) {
        for (j = 0; j < ((maze_height*2)-1); j++) {
            
        
            //**** check left ****//
            
            //if own value is not infinite
            if (maze_dist_data[i, j] != -1) {
                //if current checking position is not against the left wall
                if (i > 0) {
                    //if there is a possible pathway to the left
                    if (maze_gen_data[i-1, j] == 2) {
                        
                        //if the left value is infinite
                        if (maze_dist_data[i-1, j] == -1) {
                            //replace the left value with own value + travel cost
                            maze_dist_data[i-1, j] = maze_dist_data[i, j] + travel_cost;
                            
                            //request another run through
                            distance_updated = true;
                            
                        //if the left value is not infinite
                        } else {
                            //if the left value is larger than own value + travel cost
                            if (maze_dist_data[i-1, j] > maze_dist_data[i, j] + travel_cost) {
                                //replace left value with own value + travel_cost
                                maze_dist_data[i-1, j] = maze_dist_data[i, j] + travel_cost;
                                
                                //request another run through
                                distance_updated = true;
                            }
                        }
                    }
                }
            }
            
            //**** check right ****//
            
            //if own value is not infinite
            if (maze_dist_data[i, j] != -1) {
                //if current checking position is not against the right wall
                if (i < (maze_width*2)-2) {
                    //if there is a possible pathway to the right
                    if (maze_gen_data[i+1, j] == 2) {
                        
                        //if the right value is infinite
                        if (maze_dist_data[i+1, j] == -1) {
                            //replace the right value with own value + travel cost
                            maze_dist_data[i+1, j] = maze_dist_data[i, j] + travel_cost;
                            
                            //request another run through
                            distance_updated = true;
                            
                        //if the right value is not infinite
                        } else {
                            //if the right value is larger than own value + travel cost
                            if (maze_dist_data[i+1, j] > maze_dist_data[i, j] + travel_cost) {
                                //replace right value with own value + travel_cost
                                maze_dist_data[i+1, j] = maze_dist_data[i, j] + travel_cost;
                                
                                //request another run through
                                distance_updated = true;
                            }
                        }
                    }
                }
            }
            
            //**** check up ****//
            
            //if own value is not infinite
            if (maze_dist_data[i, j] != -1) {
                //if current checking position is not against the top wall
                if (j > 0) {
                    //if there is a possible pathway above
                    if (maze_gen_data[i, j-1] == 2) {
                        
                        //if the above value is infinite
                        if (maze_dist_data[i, j-1] == -1) {
                            //replace the above value with own value + travel cost
                            maze_dist_data[i, j-1] = maze_dist_data[i, j] + travel_cost;
                            
                            //request another run through
                            distance_updated = true;
                            
                        //if the above value is not infinite
                        } else {
                            //if the above value is larger than own value + travel cost
                            if (maze_dist_data[i, j-1] > maze_dist_data[i, j] + travel_cost) {
                                //replace the above value with own value + travel_cost
                                maze_dist_data[i, j-1] = maze_dist_data[i, j] + travel_cost;
                                
                                //request another run through
                                distance_updated = true;
                            }
                        }
                    }
                }
            }
            
            //**** check down ****//
            
            //if own value is not infinite
            if (maze_dist_data[i, j] != -1) {
                //if current checking position is not against the bottom wall
                if (j < (maze_height*2)-2) {
                    //if there is a possible pathway below
                    if (maze_gen_data[i, j+1] == 2) {
                        
                        //if the below value is infinite
                        if (maze_dist_data[i, j+1] == -1) {
                            //replace the below value with own value + travel cost
                            maze_dist_data[i, j+1] = maze_dist_data[i, j] + travel_cost;
                            
                            //request another run through
                            distance_updated = true;
                            
                        //if the below value is not infinite
                        } else {
                            //if the below value is larger than own value + travel cost
                            if (maze_dist_data[i, j+1] > maze_dist_data[i, j] + travel_cost) {
                                //replace the below value with own value + travel_cost
                                maze_dist_data[i, j+1] = maze_dist_data[i, j] + travel_cost;
                                
                                //request another run through
                                distance_updated = true;
                            }
                        }
                    }
                }
            }
            
            
            
        }
    }
}

