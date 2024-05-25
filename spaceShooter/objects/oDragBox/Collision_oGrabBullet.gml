/// @description Insert description here
// You can write your code in this editor



sprite_index = sDragBoxActive
	
		global.grabbedObject = oDragBox.id
		 
			 
		 
		var maxDistance = 230
global.shipToBoxDistance = maxDistance

		global.isGrabbing = true
  
  
	global.dragBoxX = x
	global.dragBoxY = y

global.instanceBox = instance_place(global.dragBoxX, global.dragBoxY, oDragBox)

instance_destroy(other.id)

