/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(other.puede_entrar_agujero){
	obj_cuy_sub_nivel.y = obj_agujero_sn2_1.y+obj_agujero_sn2_1.sprite_height-obj_cuy_sub_nivel.sprite_height;
	obj_cuy_sub_nivel.x = obj_agujero_sn2_1.x;
	audio_play_sound(snd_teletransporte, 10, false);
}