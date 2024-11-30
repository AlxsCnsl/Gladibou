// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_right( _object){
 _object.x += _object.h_speed;
}

function move_left( _object){
 _object.x -=  _object.h_speed;
}

function update_player_fallgame(_object){
	if (keyboard_check(vk_left)){
	move_left(_object);
	}
	if(keyboard_check(vk_right)){
	move_right(_object);
	}
}
	
