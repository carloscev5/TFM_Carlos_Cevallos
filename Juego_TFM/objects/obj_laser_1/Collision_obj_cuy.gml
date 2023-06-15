/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(visible){
	global.mensaje_perder = "Te han detectado";
	room_goto(PantallaPerder);
}else{
	if(puede_cambiar){
		alarm[0] = room_speed*vel_cambio;
		puede_cambiar = false;
	}
}
