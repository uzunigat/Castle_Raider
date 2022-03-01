// Script 

function player_walk_state(){
	
	//get input
	get_input();

	// calculate movement
	calculate_movement();
	
	if hsp == 0 state = states.IDLE;
	
	if attack {
	
		state = states.ATTACK;
		
		//Set the frame animation at first!!!
		image_index = 0;
	
	}

	// apply movement
	collision();

	// apply animations
	animate();

}