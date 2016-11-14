//create steplength - the length of the step for the player to walk to check next path
//the steplength is used to scale the maze to the screen, but also for every other objekt to know how far to look and move in the maze

//if the maze is wider than it's heigh compared to the screen
if ((cpu_width/maze_width) > (cpu_height/maze_height)) {
        //set steplength to match the maze height
    global.maze_steplength = (cpu_height/(maze_height-1))/2;
        //center on x
    cpu_offset_x = (cpu_width - ((maze_width - 1) * global.maze_steplength * 2)) / 2;
} else {
        //set steplength to match the maze width
    global.maze_steplength = (cpu_width/(maze_width-1))/2;
        //center on y
    cpu_offset_y = (cpu_height - ((maze_height - 1) * global.maze_steplength * 2)) / 2;
}
