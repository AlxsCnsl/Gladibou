/// @description Insert description here
// You can write your code in this editor

//move

var move_speed = 10;  // La vitesse de déplacement
if (keyboard_check(vk_right)) {
    hspd = move_speed;  // Se déplace à droite
} else if (keyboard_check(vk_left)) {
    hspd = -move_speed;  // Se déplace à gauche
} else {
    hspd = 0;  // Arrêt du mouvement horizontal quand aucune touche n'est pressée
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

