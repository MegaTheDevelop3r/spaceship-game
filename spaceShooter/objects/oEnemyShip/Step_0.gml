/// @description Insert description here
// You can write your code in this editor



	
		



if(distance_to_object(obj_ship)< 600){
	
	var pd = point_direction(x, y, obj_ship.x, obj_ship.y);
	var dd = angle_difference(image_angle, pd);
	
	
	




	if(dd>35 || dd<-35){
		phy_angular_velocity += 5 * sign(dd)
	}
	else{
		
		phy_linear_velocity_x += 1* cos(degtorad(image_angle))
		phy_linear_velocity_y += -1* sin(degtorad(image_angle))
		
		
		
		
		if(dd<15 && dd>-15){
			
			
			var t = get_timer();
	
	if(t - lastFireTime > 270000)
	{
		//v = instance_create_layer(oEnemyShip.x, oEnemyShip.y,layer, oRedBullet);
		
			v = instance_create_layer(ship.x, ship.y,layer, oRedBullet);
			audio_play_sound(snd_pew,0,false)
			lastFireTime = t;
		
	}	
			
			
			
		}
	
		if(dd>5 || dd<-5){
			phy_angular_velocity += 3 * sign(dd)
		}
		
		else{
			
			
			
		}
		
	}
	
	
	
}

if(phy_angular_velocity > 70 || phy_angular_velocity < -70){
	phy_angular_velocity = 70 * sign(phy_angular_velocity)
}


if(life <= 0){
		
		instance_destroy()
	}