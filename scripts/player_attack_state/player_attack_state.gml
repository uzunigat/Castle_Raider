
function player_attack_state(){
	
	//get input
	get_input();

	// calculate movement
	calculate_movement();
	
	// check state
	
	if image_index >= image_number - sprite_get_speed(sprite_index) / room_speed {
	
		if hsp != 0 state = states.WALK else state = states.IDLE
	
	}
	

	// apply movement
	collision();

	// apply animations
	animate();

}