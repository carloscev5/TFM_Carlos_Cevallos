/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(ds_list_find_index(global.objetivos, 4) >= 0 && !roto){
	sprite_index = spr_cristal_roto;
	audio_play_sound(snd_cristal_roto, 10, false);
	roto = true;
}