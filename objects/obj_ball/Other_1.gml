/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 641D85C8
/// @DnDArgument : "soundid" "snd_Bounce"
/// @DnDSaveInfo : "soundid" "snd_Bounce"
audio_play_sound(snd_Bounce, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 531FEFA1
/// @DnDArgument : "var" "bbox_left"
/// @DnDArgument : "op" "1"
if(bbox_left < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5A2018EA
	/// @DnDParent : 531FEFA1
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 76E2B5B0
	/// @DnDInput : 2
	/// @DnDParent : 531FEFA1
	/// @DnDArgument : "value" "xprevious"
	/// @DnDArgument : "value_1" "yprevious"
	/// @DnDArgument : "instvar_1" "1"
	x = xprevious;
	y = yprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FF90741
/// @DnDArgument : "var" "bbox_right"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width"
if(bbox_right > room_width)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 236FD940
	/// @DnDParent : 4FF90741
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0C20784E
	/// @DnDInput : 2
	/// @DnDParent : 4FF90741
	/// @DnDArgument : "value" "yprevious"
	/// @DnDArgument : "value_1" "xprevious"
	/// @DnDArgument : "instvar" "1"
	y = yprevious;
	x = xprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28675290
/// @DnDArgument : "var" "bbox_top"
/// @DnDArgument : "op" "1"
if(bbox_top < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 62E1CC2B
	/// @DnDParent : 28675290
	/// @DnDArgument : "speed" "-vspeed"
	/// @DnDArgument : "type" "2"
	vspeed = -vspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6C08C470
	/// @DnDInput : 2
	/// @DnDParent : 28675290
	/// @DnDArgument : "value" "yprevious"
	/// @DnDArgument : "value_1" "xprevious"
	/// @DnDArgument : "instvar" "1"
	y = yprevious;
	x = xprevious;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 248677E1
/// @DnDArgument : "var" "bbox_bottom"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(bbox_bottom > room_height)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 106DE391
	/// @DnDParent : 248677E1
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "player_lives"
	global.player_lives += -1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 18D304BF
	/// @DnDParent : 248677E1
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 618EE5C8
	/// @DnDParent : 248677E1
	/// @DnDArgument : "var" "global.player_lives"
	/// @DnDArgument : "op" "1"
	if(global.player_lives < 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75518D4C
		/// @DnDApplyTo : {obj_control}
		/// @DnDParent : 618EE5C8
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "gameover"
		with(obj_control) {
		gameover = true;
		
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48ED37ED
		/// @DnDParent : 618EE5C8
		/// @DnDArgument : "var" "global.player_score"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "global.high_score"
		if(global.player_score > global.high_score)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75DEDF64
			/// @DnDParent : 48ED37ED
			/// @DnDArgument : "expr" "global.player_score"
			/// @DnDArgument : "var" "global.high_score"
			global.high_score = global.player_score;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 00986179
	/// @DnDParent : 248677E1
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4931877C
		/// @DnDParent : 00986179
		/// @DnDArgument : "xpos" "xstart"
		/// @DnDArgument : "ypos" "ystart"
		/// @DnDArgument : "objectid" "obj_ball"
		/// @DnDSaveInfo : "objectid" "obj_ball"
		instance_create_layer(xstart, ystart, "Instances", obj_ball);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C141C16
		/// @DnDApplyTo : {obj_bat}
		/// @DnDParent : 00986179
		/// @DnDArgument : "expr" "xstart"
		/// @DnDArgument : "var" "x"
		with(obj_bat) {
		x = xstart;
		
		}
	}
}