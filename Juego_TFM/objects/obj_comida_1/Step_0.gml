/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var cuy = collision_rectangle(x-distancia,y,x+sprite_width-distancia,y+sprite_height,obj_cuy_sub_nivel,false,false);
if(cuy){
		
	if(cuy.ld && cuy.esta_comiendo){
		tiempo_vida -= 1;
	}
		
}

if(tiempo_vida == 0){
	ds_list_add(global.objetivos, 5);
	scr_guardar_partida();
	instance_destroy();
}

if(tiempo_vida > 100){
	image_index=0;
}else if(tiempo_vida > 50){
	image_index=1;
}else{
	image_index=2;	
}