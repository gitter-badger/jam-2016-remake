
extends Control

const NEXT_SCENE_PATH = "res://menu/mainmenu.tscn"

onready var tree = get_tree()
onready var _video_player = get_node("VideoPlayer")

func _ready():
	set_process(true)

func _process(delta):
	if not _video_player.is_playing():
		tree.change_scene(NEXT_SCENE_PATH)

func _on_btnSkip_pressed():
	_video_player.stop()