// Script 

function player_walk_state(){
	
	//get input
	get_input();

	// calculate movement
	calculate_movement();
	
	// check state
	
	if hsp == 0 state = states.IDLE;
	
	var side = bbox_bottom;

	var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + 1);
	var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + 1);
	
	if t1 == VOID and t2 == VOID {
		
		state = states.JUMP;
		jumps = jumps_initial;
		
	}
	
	if attack {
	
		state = states.ATTACK;
		
		//Set the frame animation at first!!!
		image_index = 0;
	
	}
	
	if jump {
	
		jumped();
	
	}

	// apply movement
	collision();

	// apply animations
	animate();

}