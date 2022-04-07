///power up n1 qui agrandi la plaform
if(image_index == 0){
	with(Obj_bat){
		image_xscale = 1.5;
		alarm[0] = 10*room_speed;
	}
///power up n2 qui redonne à la vitesse de sa balle la vitesse initial
} else  {
	with(Obj_ball){
		speed = spd;
	}
}

instance_destroy();