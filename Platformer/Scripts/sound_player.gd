extends Node

onready var music = AudioStreamPlayer.new()

var music_tracks = {
	"main":"res://sfx/music/Take_On_Me_8_Bit_Remix_Cover_Version_Tribute_to.mp3", 
}


var sound_effects = {
	"jump":"res://sfx/mixkit-player-jumping-in-a-video-game-2043.wav",
	"dead":"res://sfx/8-bit-video-game-death-sound-effect.mp3",
	"checkpoint":"res://sfx/mario-coin-200bpm-82548.mp3",
}





var music_db = 100
var sound_db = 100

func change_music_db(val):
	music_db = linear2db(val)
	
func change_sound_db(val):
	music_db = linear2db(val)

func _ready():
	music.stream = load(music_tracks["main"])
	add_child(music)
	music.play()
	


func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
