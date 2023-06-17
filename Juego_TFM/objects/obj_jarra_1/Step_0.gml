/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(ds_list_find_index(global.objetivos, 3) >= 0 && !esta_roto){
	audio_play_sound(snd_cristal_roto, 10, false);
	image_speed = 1;
	esta_roto = true;
}