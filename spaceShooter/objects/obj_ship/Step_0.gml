/// @description Insert description here
// You can write your code in this editor

audio_listener_orientation(0, 0, 1, lengthdir_x(1, direction), lengthdir_y(1, direction), 0);


if(!keyboard_check(ord("V")) && (keyboard_check(vk_left)||keyboard_check(ord("A")))){
		image_angle += 8;
}

if(!keyboard_check(ord("V")) &&(keyboard_check(vk_right) || keyboard_check(ord("D")))){
		image_angle -= 8
}

if(!keyboard_check(vk_up) && !keyboard_check(ord("W"))){
		
		sprite_index = spr_ship;
		
		audio_stop_sound(snd_rocket_engine)
}

	
if( (keyboard_check_pressed(ord("S")) && global.vCan>0)|| (keyboard_check_pressed(vk_down)&&global.vCan>0)){
		phy_speed_x = 0
		phy_speed_y = 0
		global.vCan=global.vCan-1;
		
		
}

if(keyboard_check_pressed(ord("P"))){
		
		room_goto_next()
}


if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
		
		if(!audio_is_playing(snd_rocket_engine)){
			audio_play_sound(snd_rocket_engine, 0, true)
		}
		
		//motion_add(image_angle, 0.1)
		
		phy_linear_velocity_x += 8* cos(degtorad(image_angle))
		phy_linear_velocity_y += -8* sin(degtorad(image_angle))
		
		sprite_index = spr_shipAcc;
}



if(keyboard_check_pressed(ord("X"))) {

	var t = get_timer();
	
	if(t - global.lastFireTime > global.BulletReloadSpeed)
	{
		v = instance_create_layer(obj_ship.x, obj_ship.y,layer, oGrabBullet);
		v.image_angle = obj_ship.image_angle;
		audio_play_sound(snd_pew,0,false)
		global.lastFireTime = t;
	}
}



if(keyboard_check(ord("X"))){
		
		if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
		
		
			
			sprite_index = spr_shipAccGrab
}
		
		else{
		sprite_index = spr_shipGrab
		}
		
		
}





if(keyboard_check_released(ord("X"))){
		global.isGrabbing = false
		global.shipToBoxDistance = -1
		
		if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
		
			
			
			sprite_index = spr_shipAcc
}
		
		else{
		sprite_index = spr_ship	
		}
		
		
}




//move_wrap(true,true, sprite_width/2);


//shooting

if(keyboard_check_pressed(vk_space) && !keyboard_check(ord("X"))) {

	var t = get_timer();
	
	if(t - global.lastFireTime > global.BulletReloadSpeed)
	{
		v = instance_create_layer(obj_ship.x, obj_ship.y,layer, obj_bullet);
		v.image_angle = obj_ship.image_angle;
		audio_play_sound(snd_pew,0,false)
		global.lastFireTime = t;
	}
}

if(keyboard_check_pressed(ord("V"))){

	
/*

	emitter= part_emitter_create(system);

	part_emitter_stream(system,emitter,particle,10);
	part_type_shape(particle,pt_shape_pixel);
	part_type_life(particle,50,100);
	part_type_color1(particle,c_blue);
	part_type_direction(particle,0,359,0,0);
	part_type_speed(particle,0,0.6,0,0);
	part_type_orientation(particle, -4,4,-0.3,0,0);
*/
}


if( (keyboard_check(vk_left)||keyboard_check(ord("A")))){
		phy_rotation-=8
}

	if((keyboard_check(vk_right) || keyboard_check(ord("D")))){
		phy_rotation+=8
}

if( (!keyboard_check(vk_left)&&!keyboard_check(ord("A")) && !keyboard_check(vk_right) && !keyboard_check(ord("D")))){
		phy_angular_velocity = 0
}

	


if(keyboard_check(ord("V"))){
	global.vCanTime = get_timer();
	
	motion_set(image_angle,speed);
	
	
	if( (keyboard_check(vk_left)||keyboard_check(ord("A")))){
		phy_rotation += 2;
}

	if((keyboard_check(vk_right) || keyboard_check(ord("D")))){
		phy_rotation -= 2;
}

//part_emitter_region(system,emitter,obj_ship.x-4,obj_ship.x+4,obj_ship.y-4,obj_ship.y+4, ps_shape_ellipse, ps_distr_gaussian);

}
else{
	
	//part_emitter_destroy_all(system);
}

/*

if(keyboard_check_released(ord("V"))){
	
	var time = get_timer();

}
if(lastTimer - time > 2000000){
	
}