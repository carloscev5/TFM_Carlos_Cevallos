// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_guardar_estado(){
	
	switch(global.partida){

		case 1: ini_open("partida1.ini"); break;
		case 2: ini_open("partida2.ini"); break;
		case 3: ini_open("partida3.ini"); break;
		default: ini_open("partida1.ini"); break;
	
	}

	ini_write_string("perro", "PX", base64_encode(obj_perro.x));
	ini_write_string("perro", "PY", base64_encode(obj_perro.y));
	ini_write_string("gato", "PX", base64_encode(obj_gato.x));
	ini_write_string("gato", "PY", base64_encode(obj_gato.y));
	ini_write_string("cuy", "PX", base64_encode(obj_cuy.x));
	ini_write_string("cuy", "PY", base64_encode(obj_cuy.y));
	ini_write_string("juego", "nivel", base64_encode(global.nivel));
	ini_write_string("nivel", "objetivos", ds_list_write(global.objetivos));
	ini_close();


}