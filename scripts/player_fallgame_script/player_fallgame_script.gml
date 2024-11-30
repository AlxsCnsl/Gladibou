// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_player_fallgame(_object){
	if (keyboard_check(vk_left)){
	move_left(_object);
	}
	if(keyboard_check(vk_right)){
	move_right(_object);
	}
	get_player_fallgame_sond(_object);
}

function get_playeur_fallgame_sond(_object) {
    // Si l'objet se déplace horizontalement
    if (_object.move_speed != 0) {
        // Si le son n'est pas déjà en train d'être joué, alors le jouer
        if (!audio_is_playing(_object.move_snd)) {
            _object.move_snd = audio_play_sound(slime_move, true, false);
        }
    } else {
        // Si l'objet ne bouge pas et que le son est joué, l'arrêter
        if (audio_is_playing(_object.move_snd)) {
            audio_stop_sound(_object.move_snd);
            _object.move_snd = -1; // Réinitialiser le handle
        }
    }
}


function move_right( _object){
 _object.x += _object.h_speed;
}

function move_left( _object){
 _object.x -=  _object.h_speed;
}

	
