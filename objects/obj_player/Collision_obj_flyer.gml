if(vspeed>0 and y < other.y){
	
	instance_destroy(other);
	vspeed = -1;
	
	
}else{
	instance_destroy(self)
}

