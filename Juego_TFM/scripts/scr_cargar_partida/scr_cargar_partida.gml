// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_cargar_partida(){

	switch(global.partida){

		case 1: ini_open("partida1.ini"); break;
		case 2: ini_open("partida2.ini"); break;
		case 3: ini_open("partida3.ini"); break;
		default: ini_open("partida1.ini"); break;
	
	}
	global.nivel = real(base64_decode(ini_read_string("juego", "nivel",base64_encode(global.nivel))));
	global.perro_px = real(base64_decode(ini_read_string("perro", "PX",base64_encode(global.perro_px))));
	global.perro_py = real(base64_decode(ini_read_string("perro", "PY",base64_encode(global.perro_py))));
	global.gato_px = real(base64_decode(ini_read_string("gato", "PX",base64_encode(global.gato_px))));
	global.gato_py = real(base64_decode(ini_read_string("gato", "PY",base64_encode(global.gato_py))));
	global.cuy_px = real(base64_decode(ini_read_string("cuy", "PX",base64_encode(global.cuy_px))));
	global.cuy_py = real(base64_decode(ini_read_string("cuy", "PY",base64_encode(global.cuy_py))));
	global.cuy_sub_nivel_px = real(base64_decode(ini_read_string("cuy_sub_nivel", "PX",base64_encode(global.cuy_sub_nivel_px))));
	global.cuy_sub_nivel_py = real(base64_decode(ini_read_string("cuy_sub_nivel", "PY",base64_encode(global.cuy_sub_nivel_py))));
	ds_list_read(global.objetivos, ini_read_string("nivel", "objetivos", global.objetivos));
	ini_close();


}