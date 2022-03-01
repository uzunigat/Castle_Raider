// Script player_idle_state
function player_idle_state(){

	//get input
	get_input();

	// calculate movement
	calculate_movement();
	
	if hsp != 0 state = states.WALK;
	
	if attack {
	
		state = states.ATTACK;
		
		//Set the frame animation at first!!!
		image_index = 0;
	
	}
	
	if jump {
	
		jumped();
	
	}
	
	if block {
	
		state = states.BLOCK;
		hsp = 0;
	
	}
	
	// apply movement
	collision();

	// apply animations
	animate();


}