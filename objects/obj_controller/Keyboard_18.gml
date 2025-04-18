if(keyboard_check_pressed(ord("R"))){
	room_restart();
}
if(keyboard_check_pressed(ord("L"))){
	lives+=5;
}
if(keyboard_check_pressed(ord("G"))){
	game_restart();
}
//the Option + N is not working so i decided to use P (which stands for "Pass") instead of N
if(keyboard_check_pressed(ord("P"))){
	room_goto_next();
}