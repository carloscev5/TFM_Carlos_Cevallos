/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(posicion == 1){
	draw_set_color(c_white)
	draw_set_font(fnt_perder);
	draw_text(960,340, "Cargar Partida");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black)
	draw_set_font(fnt_perder);
	draw_text(960,440, "Nueva Partida");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);	
}else{
	draw_set_color(c_black)
	draw_set_font(fnt_perder);
	draw_text(960,340, "Cargar Partida");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white)
	draw_set_font(fnt_perder);
	draw_text(960,440, "Nueva Partida");
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
}