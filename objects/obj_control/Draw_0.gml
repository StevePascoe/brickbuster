/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2C8CBE84
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(8, 8, string("Score: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 7B3C65D4
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 45D41041
/// @DnDArgument : "x" "room_width-8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""High score: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(room_width-8, 8, string("High score: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 29176C77
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 3EC8EB60
/// @DnDArgument : "x" "(room_width/2)-(global.player_lives*8)/2"
/// @DnDArgument : "y" "room_height-16"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDArgument : "number" "global.player_lives"
/// @DnDSaveInfo : "sprite" "spr_lives"
var l3EC8EB60_0 = sprite_get_width(spr_lives);
var l3EC8EB60_1 = 0;
for(var l3EC8EB60_2 = global.player_lives; l3EC8EB60_2 > 0; --l3EC8EB60_2) {
	draw_sprite(spr_lives, 0, (room_width/2)-(global.player_lives*8)/2 + l3EC8EB60_1, room_height-16);
	l3EC8EB60_1 += l3EC8EB60_0;
}