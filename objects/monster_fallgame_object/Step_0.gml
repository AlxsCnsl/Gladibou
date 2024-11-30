/// @description Insert description here
// You can write your code in this editor

//move

  // La vitesse de déplacement
if (keyboard_check(vk_right)) {
    hspd = move_speed;  // Se déplace à droite
} else if (keyboard_check(vk_left)) {
    hspd = -move_speed;  // Se déplace à gauche
} else {
    hspd = 0;  // Arrêt du mouvement horizontal quand aucune touche n'est pressée
}

if (keyboard_check(vk_left) || keyboard_check(vk_right)) {
    if (!is_moving) {
        // Si le personnage commence à bouger et que le son n'est pas encore joué
        sound_id = audio_play_sound(slime_move, 1, true); // Jouer en boucle
        is_moving = true;
    }
} else {
    if (is_moving) {
        // Si le personnage s'arrête, arrêter le son
        if (sound_id != -1) {
            audio_stop_sound(sound_id);
            sound_id = -1;
        }
        is_moving = false;
    }
}


// Empêche de dépasser les limites horizontalement
if (x + hspd < 0) {
    hspd = 0; // Bloque si on dépasse à gauche
    x = 0;
}
if (x + hspd > room_width - 64) {
    hspd = 0; // Bloque si on dépasse à droite
    x = room_width - 64;
}

// Saut
var jump_speed = -10;  // La vitesse du saut
var grav = 0.5;  // La gravité
var max_fall_speed = 10;  // Vitesse de chute maximale

// Vérifie si l'objet est au sol
if (place_meeting(x, y + 1, collide_object)) { // obj_sol est l'objet représentant le sol
	vspeed = 0
    if (keyboard_check_pressed(vk_space)) {
        vspeed = jump_speed;  // Applique la vitesse de saut
		audio_play_sound(global.slime_jump_snds[irandom_range(0, 2)], 1, false);
    }
} else {
    // Applique la gravité si l'objet n'est pas au sol
    if (vspeed < max_fall_speed) {
        vspeed += grav;
    }
}

// Applique le mouvement
x += hspd;
y += vspeed;

//update_player_fallgame(self);

