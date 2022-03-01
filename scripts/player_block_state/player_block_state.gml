function player_block_state(){
	
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
	
	if block {
	
		hsp = 0;
		
	}
	
	else {
	
		if hsp != 0 {
		
			if !on_ground() state = states.JUMP else state = states.WALK;
		
		}
		
		else {
		
			states = states.IDLE;
		
		}
	
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