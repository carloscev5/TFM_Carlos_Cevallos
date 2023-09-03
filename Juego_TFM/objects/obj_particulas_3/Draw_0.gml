/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(ds_list_find_index(global.objetivos, 5) == -1){
	draw_set_color(0xfff0ee);
	scr_crear_rayo(3140, 1515, 4608, 1515, 5, 15, 5, 10);
	draw_set_color(c_aqua);
	scr_crear_rayo(3140, 1520, 4608, 1520, 5, 15, 5, 10);
	draw_set_color(c_yellow)
	scr_crear_rayo(3140, 1525, 4608, 1525, 5, 15, 5, 10);
}	

if(ds_list_find_index(global.objetivos, 7) == -1){
	draw_set_color(0xfff0ee);
	scr_crear_rayo(0, 2390, 4608, 2390, 5, 15, 10, 20);
	draw_set_color(c_aqua);
	scr_crear_rayo(0, 2400, 4608, 2400, 5, 15, 10, 20);
	draw_set_color(c_yellow)
	scr_crear_rayo(0, 2410, 4608, 2410, 5, 15, 10, 20);
}	
