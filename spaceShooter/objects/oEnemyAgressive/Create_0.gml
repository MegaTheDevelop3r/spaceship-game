/// @description Insert description here
// You can write your code in this editor
sprite_index=sEnemyPassive;
 flag = false

 emitterCreated = false
 
 snd = audio_play_sound(snd_space_drone,true,0)
 audio_stop_sound(snd)
//move_bounce_solid(true);


instance = instance_nearest(x,x,oEnemyAgressive)