/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_free(x, y+1){
	gravity = 2;
}else{
	gravity = 0;
}
if vspeed >= 32 {vspeed = 32;}

if(ld){

	x = x + vel;
	
}else{
	
	x = x - vel;
	
}