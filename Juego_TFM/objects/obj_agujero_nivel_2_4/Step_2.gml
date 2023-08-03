/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(global.posicion_raton_gordo == 3){
	var perro = collision_rectangle(x+distancia,y,x+sprite_width+distancia,y+sprite_height,obj_perro,false,false);
	if(perro){
		if(!perro.ld && perro.esta_ladrando){
			if(global.gato_en_agujero_raton_gordo){
				global.posicion_raton_gordo = 2;
			}else{
				global.posicion_raton_gordo = 1;	
			}
		}
	}
}