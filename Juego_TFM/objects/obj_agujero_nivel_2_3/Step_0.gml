/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(global.posicion_raton_gordo == 1){
	var perro = collision_rectangle(x+distancia,y,x+sprite_width+distancia,y+sprite_height,obj_perro,false,false);
	if(perro){
		if(!perro.ld && perro.esta_ladrando){
			global.posicion_raton_gordo = 3;
			ds_list_add(global.objetivos, 7);
			scr_guardar_partida();
		}
	}
}