/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(visible){
	room_restart();
}else{
	if(puede_cambiar){
		alarm[0] = room_speed*vel_cambio;
		puede_cambiar = false;
	}
}