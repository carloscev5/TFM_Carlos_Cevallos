/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
x_ant = x;
y_ant = y;
cont_cambio = 10;
esta_cambiando = false;
posicion_actual = 1;
vel = 3;
corriendo = false;
if(ds_list_find_index(global.objetivos, 9) != -1){
	instance_destroy();
}