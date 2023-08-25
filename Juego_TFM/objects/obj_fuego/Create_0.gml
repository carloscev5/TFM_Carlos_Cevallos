/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_play_sound(snd_fuego, 10, true);
if(ds_list_find_index(global.objetivos, 2) >= 0){
	audio_stop_sound(snd_fuego);
	instance_destroy();
}
finalizo = false;

