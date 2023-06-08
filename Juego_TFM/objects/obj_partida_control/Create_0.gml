/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
scr_inicializar_datos();
scr_cargar_controles();
scr_cargar_partida();
scr_verificar_control();

switch(global.nivel){
	
	case 0:
	case 1:
		room_goto(Nivel1);
		break;
		
	case 12:
		room_goto(SubNivel1);
		break;
	
}