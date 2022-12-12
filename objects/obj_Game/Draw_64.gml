switch(room){
		case rm_LevelOne:
			var c = c_black;
			draw_text_transformed_color(20, 40, "LIVES: "+ string(lives), 1, 1, 0, c, c, c, c, 1);
			break;
			
		case rm_LevelTwo:
			var c = c_black;
			draw_text_transformed_color(20, 40, "LIVES: "+ string(lives), 1, 1, 0, c, c, c, c, 1);
			break;
		
		case rm_Start:
			var c = c_black;
			draw_set_halign(fa_center);
			draw_text_transformed_color(room_width/2, 300, "Platformer", 3, 3, 0, c, c, c, c, 1);
			draw_text_transformed_color(room_width/2, 400, "PRESS ENTER TO START", 1, 1, 0, c, c, c, c, 1);
			draw_set_halign(fa_left);
			break;
			
		case rm_Win:
			var c = c_green;
			draw_set_halign(fa_center);
			draw_text_transformed_color(room_width/2, 200, "YOU WON", 3, 3, 0, c, c, c, c, 1);
			var c = c_black;
			draw_text_transformed_color(room_width/2, 300, "PRESS ENTER TO RESTART", 1, 1, 0, c, c, c, c, 1);
			draw_set_halign(fa_left);
			break;
			
		case rm_GameOver:
			var c = c_red;
			draw_set_halign(fa_center);
			draw_text_transformed_color(room_width/2, 200, "GAMEOVER", 3, 3, 0, c, c, c, c, 1);
			var c = c_black;
			draw_text_transformed_color(room_width/2, 350, "PRESS ENTER TO RESTART", 1, 1, 0, c, c, c, c, 1);
			draw_set_halign(fa_left);
			break;
}