if (keyboard_check(vk_left) and (!instance_place(x-move_speed,y,obj_block)) and !climbing) {
	x += -move_speed;
	image_xscale = -1;
}

if (keyboard_check(vk_right) and (!instance_place(x+move_speed,y,obj_block) )and !climbing) {
	x += move_speed;
	image_xscale = 1;
}

if(keyboard_check(vk_up)){
	if(instance_place(x,y+1,obj_block))
		vspeed = jump_height;
}

if(instance_place(x,y+1,obj_block)){
		gravity = 0;
}else {
		gravity = 0.1;
}

// Limiting  the vspeed 

if(vspeed>=12)
	vspeed = 12;
	
// Climbing Section

if(instance_place(x,y,obj_ladder)){
	if(keyboard_check(vk_up) or keyboard_check(vk_down)){
		climbing = true;
		
		sprite_index = spr_climbing;
	}
	vspeed = 0;
	gravity = 0;
	
	if(!instance_place(x,y+1,obj_block))
		sprite_index = spr_climbing;
	
}else{
	climbing = false;
	sprite_index = spr_player;
}

if(climbing){
	if(keyboard_check(vk_up))
		y -=3;
	
	if(keyboard_check(vk_down))
		y +=3;
}else{
	//Implementing the melee attack
	if(keyboard_check_pressed(ord("Z"))){
		instance_create_layer(x,y,"Instances",obj_sword);
	}
}



