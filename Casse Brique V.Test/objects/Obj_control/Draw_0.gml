///set up du score
draw_text(8,8, "Score: " + string(global.player_score));
///pour le mettre a droite de l'écran
draw_set_halign(fa_right);
draw_text(room_width-8, 8, "High Score: " + string(global.high_score));

draw_set_halign(fa_left);

///mettre les vies du joueurs en bas
_x = (room_width/2) - ((global.player_lives-1) * 32);
///pas trop compris cette partis là
repeat(global.player_lives){
	draw_sprite(
		spr_heart,
		0,
		_x,
		room_height-16
	);
	_x += 60
}