
//reset all permissions
global.permission_move = false;
global.permission_listen = false;
global.permission_doors = false;
global.permission_pda = false;
global.permission_attack = false;


/*
|x| | | | | player move + nightvision
| |x| | | | listen button
| | |x| | | laserdoors
| | | |x| | PDA
| | | | |x| attack button


|x|x|x|x|x| -  0 - everything allowed
| | | | | | -  1 - nothing allowed - thief view
|x| | | | | -  2 - movement allowed - tasks
|x| | | | | -  3 - movement allowed
| | | | | | -  4 - nothing allowed
| | | | | | -  5 - nothing allowed
| |x| | | | -  6 - listen allowed
| |x|x| | | -  7 - doors allowed
| | | |x| | -  8 - pda allowed

| | | | | | - 10 - nothing allowed
| |x|x| |x| - 11 - attack allowed
| | | | | | - 12 - nothing allowed
*/

if (global.tutorial_state == 0) {
    global.permission_move   = true;
    global.permission_listen = true;
    global.permission_doors  = true;
    global.permission_pda    = true;
    global.permission_attack = true;
}

if (global.tutorial_state == 2) {
    global.permission_move   = true;
}

if (global.tutorial_state == 3) {
    global.permission_move   = true;
}

if (global.tutorial_state == 6) {
    global.permission_listen = true;
}

if (global.tutorial_state == 7) {
    global.permission_listen = true;
    global.permission_doors  = true;
    
}

if (global.tutorial_state == 8) {
    global.permission_pda    = true;
}

if (global.tutorial_state == 10) {
    global.permission_attack = true;
}


if (global.tutorial_state == 11) {
    global.permission_listen = true;
    global.permission_doors  = true;
    global.permission_attack = true;
}

