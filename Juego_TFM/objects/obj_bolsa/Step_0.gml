/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var perro = collision_rectangle(x-distancia,y,x+sprite_width-distancia,y+sprite_height,obj_perro,false,false);
if(perro){
	if(perro.esta_cavando){
		tiempo_vida -= 1;
	}		
}

if(tiempo_vida == 0){
	global.tiene_llave = true;
	ds_list_add(global.objetivos, 16);	
	audio_play_sound(snd_recoger_llave, 10, false);
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