/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(other.esta_comiendo && tiempo_vida > 0){
	tiempo_vida -= 1;
	if(tiempo_vida == 0){
		ds_list_add(global.objetivos, 4);
		scr_guardar_partida();
		instance_destroy();		
	}
}