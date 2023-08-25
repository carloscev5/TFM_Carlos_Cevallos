/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
tiempo_vida = 50;
distancia = 36;
image_index=0;
image_speed=0;
finalizado = false;
y = y -60;
if(ds_list_find_index(global.objetivos, 10) >= 0){
	image_index = 1;
	finalizado = true;
}