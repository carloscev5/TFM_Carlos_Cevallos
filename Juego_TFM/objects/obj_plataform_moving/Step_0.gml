/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
y_ant = y;
x_ant = x;

if(esta_moviendo){
	cont += vel;
	if(cont == limit){
		if(esta_regresando){
			esta_regresando = false;
		}else{
			esta_regresando = true;
		}
		cont = 0;
	}

	switch(pos){
	
		case "arr":
			if(esta_regresando){
				y = y + vel;	
			}else{
				y = y - vel;		
			}
			break;
		
		case "aba":
			if(esta_regresando){
				y = y - vel;	
			}else{
				y = y + vel;		
			}
			
			break;
		
		case "der":
			if(esta_regresando){
				x = x - vel;	
			}else{
				x = x + vel;		
			}
			break;
		
		case "izq":
			if(esta_regresando){
				x = x + vel;	
			}else{
				x = x - vel;		
			}
			break;
	
	}
}




