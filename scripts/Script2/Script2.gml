// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_food(_object) {
	downward_movement(_object);
	detect_collide_player(_object);
}

function downward_movement(_object){
	_object.y += _object.v_speed;
}

function detect_collide_player(_object){
	if(place_meeting(x, y, monster_fallgame_object)){
		if(_object.is_tainted == false){
			global.active_hp += 1;
			instance_destroy();
		}else{
			global.active_hp -= 5;
			instance_destroy();
		}
	}
}

function make_tainted(_object){
	_object.is_tainted = true;
	_object.image_index = 1;
}