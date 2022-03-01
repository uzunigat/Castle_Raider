// Script 
function player_jump_state(){
	
		//get input
	get_input();

	// calculate movement
	calculate_movement();
	
	if on_ground() {
		
		if hsp != 0 state = states.WALK else state = states.IDLE;
		// create dust if landing
		
		if vsp > 0 {
		
			instance_create_layer(x,y,"Dust", o_player_dust_land);
		
		}
	
	}
	
	if attack {
	
		state = states.ATTACK;
		
		//Set the frame animation at first!!!
		image_index = 0;
	
	}
	
	// enable double jump
	
	if jump {
		
		jumped();
	
	}
	
	// enable smaller jumps
	if vsp < 0 and !jump_held vsp = max(vsp, jump_spd/jump_dampner);
	

	// apply movement
	collision();

	// apply animations
	animate();


}