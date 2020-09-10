/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 629C4D9E
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_brick"
/// @DnDSaveInfo : "object" "obj_brick"
var numOfBricks = instance_number(obj_brick);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45BA50B6
/// @DnDArgument : "var" "numOfBricks"
if(numOfBricks == 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 76EDCCED
	/// @DnDParent : 45BA50B6
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D3F2C34
/// @DnDArgument : "var" "gameover"
/// @DnDArgument : "value" "true"
if(gameover == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 133991B7
	/// @DnDParent : 0D3F2C34
	/// @DnDArgument : "key" "vk_anykey"
	var l133991B7_0;
	l133991B7_0 = keyboard_check_pressed(vk_anykey);
	if (l133991B7_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 23DA10E6
		/// @DnDParent : 133991B7
		/// @DnDArgument : "soundid" "snd_PowerUp"
		/// @DnDSaveInfo : "soundid" "snd_PowerUp"
		audio_play_sound(snd_PowerUp, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0DEAE6C7
		/// @DnDParent : 133991B7
		/// @DnDArgument : "var" "player_score"
		global.player_score = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 00AC304D
		/// @DnDParent : 133991B7
		/// @DnDArgument : "value" "3"
		/// @DnDArgument : "var" "player_lives"
		global.player_lives = 3;
	
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 444CFDB0
		/// @DnDParent : 133991B7
		room_restart();
	}
}