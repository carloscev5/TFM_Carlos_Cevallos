/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(ds_list_find_index(global.objetivos, 3) >= 0 && !finalizo){
	x -= vel;
	if(x<obj_piso_saliente_3.x){
		finalizo = true;
	}
}else{
	x = obj_piso_saliente_3.x-10;
	y = obj_piso_saliente_3.y-5;
}