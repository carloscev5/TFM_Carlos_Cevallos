/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(name == "laser_1"){
	if(laser_1.puede_cambiar){
		image_speed = 0;
		if(laser_1.visible){
			image_index = 1;
		}else{
			image_index = 0;
		}
	}else{
		image_speed = 1;		
	}	
}

if(name == "laser_2"){
	if(laser_2.puede_cambiar){
		image_speed = 0;
		if(laser_2.visible){
			image_index = 1;
		}else{
			image_index = 0;
		}
	}else{
		image_speed = 1;		
	}	
}