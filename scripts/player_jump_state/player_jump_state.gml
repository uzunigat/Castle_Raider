// Script 
function player_jump_state(){
	
		//get input
	get_input();

	// calculate movement
	calculate_movement();
	
	if on_ground() {
		
		if hsp != 0 state = states.WALK else state = states.IDLE;
	
	
	}
	
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