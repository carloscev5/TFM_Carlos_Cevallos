// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_elegir_nivel(nivel){
	switch(nivel){
	
		case 0:
		case 1:
			room_goto(Nivel1);
			break;
		
		case 12:
			room_goto(SubNivel1);
			break;
	
	}
}