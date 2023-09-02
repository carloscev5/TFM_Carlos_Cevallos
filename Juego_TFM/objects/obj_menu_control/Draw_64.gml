/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_color(c_black);
draw_rectangle(700, 450, 1200, 850, false);

draw_set_font(fnt_menu);
if(posicion == 0){
	draw_set_color(c_white)
}else{
	draw_set_color(c_gray)
}
draw_text(960,540, "Jugar");
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(posicion == 1){
	draw_set_color(c_white)
}else{
	draw_set_color(c_gray)
}
draw_text(960,640, "Controles");
draw_set_halign(fa_center);
draw_set_valign(fa_middle);	

if(posicion == 2){
	draw_set_color(c_white)
}else{
	draw_set_color(c_gray)
}
draw_text(960,740, "Salir");
draw_set_halign(fa_center);
draw_set_valign(fa_middle);	

