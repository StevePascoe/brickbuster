/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0B069601
/// @DnDArgument : "soundid" "snd_PowerUp"
/// @DnDSaveInfo : "soundid" "snd_PowerUp"
audio_play_sound(snd_PowerUp, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 46FAD197
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E3B00E2
/// @DnDArgument : "var" "image_index"
if(image_index == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6BDC1FAF
	/// @DnDApplyTo : {obj_bat}
	/// @DnDParent : 3E3B00E2
	/// @DnDArgument : "value" "1.5"
	/// @DnDArgument : "instvar" "15"
	with(obj_bat) {
	image_xscale = 1.5;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 059ADDA6
	/// @DnDApplyTo : other
	/// @DnDParent : 3E3B00E2
	/// @DnDArgument : "steps" "10 * room_speed"
	with(other) {
	alarm_set(0, 10 * room_speed);
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 191C2E02
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6D45F11B
	/// @DnDApplyTo : {obj_ball}
	/// @DnDParent : 191C2E02
	/// @DnDArgument : "speed" "spd"
	with(obj_ball) speed = spd;
}