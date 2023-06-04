// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_cargar_estado(){

	switch(global.partida){

		case 1: ini_open("partida1.ini"); break;
		case 2: ini_open("partida2.ini"); break;
		case 3: ini_open("partida3.ini"); break;
		default: ini_open("partida1.ini"); break;
	
	}

	obj_perro.x = real(base64_decode(ini_read_string("perro", "PX",base64_encode(obj_perro.x))));
	obj_perro.y = real(base64_decode(ini_read_string("perro", "PY",base64_encode(obj_perro.y))));
	obj_gato.x = real(base64_decode(ini_read_string("gato", "PX",base64_encode(obj_gato.x))));
	obj_gato.y = real(base64_decode(ini_read_string("gato", "PY",base64_encode(obj_gato.y))));
	obj_cuy.x = real(base64_decode(ini_read_string("cuy", "PX",base64_encode(obj_cuy.x))));
	obj_cuy.y = real(base64_decode(ini_read_string("cuy", "PY",base64_encode(obj_cuy.y))));
	ds_list_read(global.objetivos, ini_read_string("nivel", "objetivos", global.objetivos));
	ini_close();


}