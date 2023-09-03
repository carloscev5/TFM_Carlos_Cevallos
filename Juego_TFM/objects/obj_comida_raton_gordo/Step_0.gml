/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(tiempo_vida == 0){
	instance_destroy();
}

if(tiempo_vida > 100){
	image_index=0;
}else if(tiempo_vida > 50){
	image_index=1;
}else{
	image_index=2;	
}

if(global.posicion_raton_gordo == 2){
	visible = false;	
}else{
	visible = true;	
}