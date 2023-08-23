/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(esta_funcionando){
	if(ds_list_find_index(global.objetivos, objetivo) >= 0){
		image_speed = 1;
		esta_funcionando = false;
		audio_play_sound(snd_boton, 10, false);
	}
}