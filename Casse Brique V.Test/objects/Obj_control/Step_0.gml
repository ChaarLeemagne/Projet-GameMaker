///la fin du jeux
/// si il n'y a plus de brique
if(instance_number(Obj_brick) <= 0){
	room_restart();
}
///si il n'y a plus de vie
if(gameover){
	if(keyboard_check_pressed(vk_anykey)){
			room_restart();
			global.player_score = 0;
			global.player_lives = 3;
	}
}