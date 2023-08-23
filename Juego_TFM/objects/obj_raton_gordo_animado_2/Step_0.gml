/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(global.posicion_raton_gordo == 3){
	x = xstart;
	sprite_index = spr_raton_gordo_viendo_2;
}

if(global.posicion_raton_gordo == 2){
	x= xstart-575;
	if(instance_exists(obj_comida_raton_gordo)){
		sprite_index = spr_raton_gordo_comida;
	}else{
		sprite_index = spr_raton_gordo_triste;
	}
}