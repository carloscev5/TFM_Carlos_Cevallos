/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!instance_exists(fuego_tuberia) && !finalizo){
	audio_stop_sound(snd_fuego);
	audio_play_sound(snd_apagar_fuego, 10, false);
	sprite_index = spr_fuego_apagandose;
	finalizo = true;
}