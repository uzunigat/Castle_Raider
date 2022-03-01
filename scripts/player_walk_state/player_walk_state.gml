// Script 

function player_walk_state(){
	
	//get input
	get_input();

	// calculate movement
	calculate_movement();
	
	if hsp == 0 state = states.IDLE;

	// apply movement
	collision();

	// apply animations
	animate();

}