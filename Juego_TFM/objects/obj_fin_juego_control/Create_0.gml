/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!audio_is_playing(snd_cancion_2)){
	audio_stop_all();
	audio_play_sound(snd_cancion_2,10,true);	
}