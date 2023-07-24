/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(other.esta_ladrando){
	ds_list_add(global.objetivos, 2);
	scr_guardar_partida();
	instance_destroy(fuego_tuberia);
	instance_destroy();	
}