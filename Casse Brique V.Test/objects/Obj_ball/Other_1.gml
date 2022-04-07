///fait rebondir la balle sur les bords du jeux
if(bbox_left < 0 or bbox_right > room_width){
	x = clamp(x, sprite_xoffset, room_width-sprite_xoffset) 
	hspeed = hspeed * -1;
}
///fais rebondir la balle sur le haut de  l'écran
if(bbox_top < 0 ){
	y = clamp(y, sprite_xoffset, room_height-sprite_xoffset)
	vspeed *= -1;
}
///si la balle passe en dessous de la limite du bas le joueur perd 1 vie
if(bbox_bottom > room_height){
	global.player_lives -= 1;
	instance_destroy();
/// si le joueur n'a plus de vie le jeu redémarre	
	if(global.player_lives <= 0){
		Obj_control.gameover = true;
		/// setup du highscore
		if(global.player_score > global.high_score){
			global.high_score = global.player_score
		}
	} else {
		instance_create_layer(xstart, ystart, "Instances", Obj_ball)
	}
}