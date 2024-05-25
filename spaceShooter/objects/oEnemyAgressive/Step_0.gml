/// @description Insert description here
// You can write your code in this editor

//if(emitterCreated = false){
//	emitter = audio_emitter_create();
//	emitterCreated = true
//}


//audio_emitter_position(emitter, x, y, 1);

if(distance_to_object(obj_ship)< 600){
	
	if(flag == false){
		//audio_play_sound_on(emitter, snd_target_locked, false, 10);
		
		
		audio_play_sound(snd_target_locked,false,0)
		flag = true
	}
	var pd = point_direction(x, y, obj_ship.x, obj_ship.y);
	var dd = angle_difference(image_angle, pd);
	
	
	




if(dd>35 || dd<-35){
	
	if(audio_is_playing(snd)){
		audio_stop_sound(snd)
		
	}
	
	sprite_index=sEnemyAgressive;
	
	
	//image_angle -= 15 * sign(dd)
	
	phy_angular_velocity += 30 * sign(dd)
	
}
else{
	sprite_index=sEnemyAgressiveMove
	
		phy_linear_velocity_x += 9* cos(degtorad(image_angle))
		phy_linear_velocity_y += -9* sin(degtorad(image_angle))
		
		phy_angular_velocity += 11 * sign(dd)
	if(!audio_is_playing(snd)){
		snd = audio_play_sound(snd_space_drone,true,0)
	}
}

if(phy_angular_velocity > 170){
	phy_angular_velocity = 170
}

	phy_rotation = -image_angle
	
	
	
	
		
}


else{
	sprite_index=sEnemyPassive
	flag = false
}

/*  if((!(dd < 30) || !(dd>-30)) && flag == false){
	
	sprite_index=sEnemyAgressive;
		
	var pd = point_direction(x, y, obj_ship.x, obj_ship.y);
	var dd = angle_difference(image_angle, pd);
	
	image_angle -= 6 * sign(dd)
	
	if(dd<30 && dd>-30){
		
		flag = true
		
		
	}
} */

/* if(flag = true){
	if(dd < 50 && dd>-50){
	motion_add(image_angle, 0.07);
	sprite_index=sEnemyAgressiveMove
	
	}
	else{
		sprite_index=sEnemyAgressive;
		
		
		flag = false
		
		
	}
}*/





