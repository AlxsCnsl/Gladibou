// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_food(_object) {
	downward_movement(_object);
	detect_collide_player(_object);
	detect_collide_floor(_object);
}

function downward_movement(_object){
	_object.y += _object.v_speed;
}

function detect_collide_player(_object){
	if(place_meeting(x, y, monster_fallgame_object)){
		if(_object.is_tainted == false){
			global.active_hp += 1;
			audio_play_sound(global.steak_eat_snds [irandom_range(0, 2)], 1, false);
			instance_destroy();
		}else{
			global.active_hp -= 5;
			audio_play_sound(global.fakesteak_eat_snds [irandom_range(0, 3)], 1, false);
			instance_destroy();
			
		}
	}
}

function detect_collide_floor(_object){
	if(place_meeting(x, y, collide_object)){
		audio_play_sound(global.steak_crash_snds[irandom_range(0, 3)], 1, false);
		instance_destroy();
		}
}

function make_tainted(_object){
	_object.is_tainted = true;
	_object.image_index = 1;
}