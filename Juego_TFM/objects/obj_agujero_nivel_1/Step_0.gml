/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if((obj_gato.der || obj_gato.izq) && global.active_character == 2){
	puede_entrar = true;
	if(obj_ratona_viendo_1.sprite_index != spr_ratona_entrando && obj_ratona_viendo_1.sprite_index != spr_ratona_dentro ){
		obj_ratona_viendo_1.sprite_index = spr_ratona_entrando;
	}
	alarm[0] = room_speed*1;
}