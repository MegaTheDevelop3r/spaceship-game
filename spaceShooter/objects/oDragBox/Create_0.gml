/// @description Insert description here
// You can write your code in this editor


global.isGrabbing = false

global.shipToBoxDistance = -1

global.dragBoxX=0
global.dragBoxY = 0


snd = audio_play_sound(gravity_gun, true,0)

audio_stop_sound(snd)

soundPlaying = false

global.instanceBox = noone


global.inPlace = false

holePosX = 0
holePosY = 0



