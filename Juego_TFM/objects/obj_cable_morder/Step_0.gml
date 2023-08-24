/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!instance_exists(obj_cable_masticar)){
	image_index = 2;
}else{
	if(obj_cable_masticar.tiempo_vida >= 25){
		image_index=0;
	}else{
		image_index=1;	
	}
}

