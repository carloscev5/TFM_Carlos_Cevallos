/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!instance_exists(obj_bloqueo) && !roto){
	sprite_index = spr_cristal_roto;
	audio_play_sound(snd_cristal_roto, 10, false);
	roto = true;
}