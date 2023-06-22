/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(ds_list_find_index(global.objetivos, 3) >= 0 && !ya_cayo){
	
	esta_cayendo = true;
}

if(esta_cayendo){
	
	if(y < 2500){
		y += 40;
		x += 5;
		image_angle += 10;
		
	}else{
		x = 1980;
		y = 2548;
		image_angle = 0;
		esta_cayendo = false;
		ya_cayo = true;	
	}
	
}