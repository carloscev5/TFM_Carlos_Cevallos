/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(other.puede_entrar_agujero){
	other.x = objeto.x+objeto.sprite_width;
	other.y = objeto.y-18;
	audio_play_sound(snd_teletransporte, 10, false);
}