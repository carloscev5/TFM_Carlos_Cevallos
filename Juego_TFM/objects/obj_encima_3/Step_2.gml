/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(personajes_encima == 2){
	instance_destroy(obj_piso_electrocutado_1);
	obj_mover_3.solid = true;
	audio_play_sound(snd_apagar_electricidad, 10, false);
	instance_destroy();
	ds_list_add(global.objetivos, 5);	
	scr_guardar_partida();	
}