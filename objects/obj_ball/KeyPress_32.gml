/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4EBA8800
/// @DnDArgument : "var" "go"
/// @DnDArgument : "value" "false"
if(go == false)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 63643D85
	/// @DnDParent : 4EBA8800
	/// @DnDArgument : "soundid" "snd_Click"
	/// @DnDSaveInfo : "soundid" "snd_Click"
	audio_play_sound(snd_Click, 0, 0);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 65ECE765
	/// @DnDParent : 4EBA8800
	/// @DnDArgument : "direction" "135,90,45"
	direction = choose(135,90,45);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3BE2B545
	/// @DnDParent : 4EBA8800
	/// @DnDArgument : "speed" "spd"
	speed = spd;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76257EE6
	/// @DnDParent : 4EBA8800
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "go"
	go = true;
}