extends Node2D
@onready var player = $player
@onready var gameover = $gameover



# Called when the node enters the scene tree for the first time.
func _ready():
	player.k12.connect(_denovo)
	gameover.again.connect(_reset)
	Global.PT.connect(_vitoria)
	Global.somaponto = 0
	if Global.vida == 0 or Global.vida <= 0:
		Global.vida += 5
	
	
	
	
func _denovo():
	get_tree().change_scene_to_file("res://gameover.tscn")

func _vitoria():
	get_tree().change_scene_to_file("res://canvas_layer.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _reset():
	get_tree().reload_current_scene()
	
	
	print("reiniciar jogo")
	
	
	

