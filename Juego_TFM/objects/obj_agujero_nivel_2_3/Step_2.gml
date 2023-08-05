/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(!global.gato_en_agujero_raton_gordo && global.posicion_raton_gordo == 2){
	r = irandom_range(0,1)
	if(r == 1){
		global.posicion_raton_gordo = 1;	
	}else{
		global.posicion_raton_gordo = 3;	
	}	
}