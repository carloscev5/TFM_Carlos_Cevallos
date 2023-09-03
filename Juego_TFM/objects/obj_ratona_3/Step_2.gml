/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(puede_moverse){
	if(obj_salida_1.tiene_alguien && obj_salida_2.tiene_alguien){
		x = 1344;
		y = 1920;
		puede_moverse = false;
		instance_create_layer(1248, 1920, "Arte", obj_llave_3);
		ds_list_add(global.objetivos, 8);	
		scr_guardar_partida();
	}else{
		if(obj_salida_1.tiene_alguien){
			x = obj_salida_2.x;
			y = obj_salida_2.y;
		}else{
			x = obj_salida_1.x;
			y = obj_salida_1.y;			
		}
	}
}
