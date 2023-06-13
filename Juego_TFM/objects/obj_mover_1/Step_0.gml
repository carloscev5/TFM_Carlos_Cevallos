/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Gravedad
if place_free(x, y+1){
	gravity = 2;
}else{
	gravity = 0;
}
if vspeed >= 32 {vspeed = 32;}
#endregion 

#region Verificar si cae 
if vspeed >= 0 && place_free(x, y+1){

	caer = true;
	
}else{

	caer = false;
	
}
#endregion
