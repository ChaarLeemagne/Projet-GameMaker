///ajoute du score et modifie la vitesse de la balle lorsque celle-ci touche une brique
move_bounce_all(true);

global.player_score += 15;
if(speed < 15)
	speed += 0.3;

instance_destroy(other);

