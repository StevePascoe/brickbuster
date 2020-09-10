/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 0948C8DC
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 1479AF78
/// @DnDInput : 6
/// @DnDArgument : "var" "colour"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "c_purple"
/// @DnDArgument : "option_1" "c_red"
/// @DnDArgument : "option_2" "c_navy"
/// @DnDArgument : "option_3" "c_lime"
/// @DnDArgument : "option_4" "c_fuchsia"
/// @DnDArgument : "option_5" "c_silver"
var colour = choose(c_purple, c_red, c_navy, c_lime, c_fuchsia, c_silver);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 3E03D66C
/// @DnDArgument : "value" "colour"
/// @DnDArgument : "instvar" "14"
image_blend = colour;