/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(ds_list_find_index(global.objetivos, 4) >= 0){
	image_index = 2;
	if(!sono){
		audio_play_sound(snd_abrir_jaula, 10, false);
		sono = true;
	}
}else{
	if(obj_cable_masticar.tiempo_vida >= 25){
		image_index=0;
	}else{
		image_index=1;	
	}
}

