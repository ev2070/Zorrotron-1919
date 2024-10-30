// obj_human Create

event_inherited();

// Movement variables
slide_spd = DEFAULT_SLIDE_SPEED/4;
dir_x = irandom(2); // 0 - left; 1 - right; 2 - none
dir_y = irandom(2); // 0 - up; 1 - down; 2 - none

// Timer variables
seconds = 1;
timer = seconds * GAME_SPEED;

points_worth = 1000; // Starting worth

/* Bonus Points System per Wave (Re-)Setup
	1st  saved	1000 points
	2nd  saved	2000 points
	3rd  saved	3000 points
	4th  saved	4000 points
	5th+ saved	5000 points
*/
