/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

x = obj_piso_saliente_3.x-10;
y = obj_piso_saliente_3.y-5;
vel = 25;
finalizo = false;
if(ds_list_find_index(global.objetivos, 3) >= 0){
	finalizo = true;
}