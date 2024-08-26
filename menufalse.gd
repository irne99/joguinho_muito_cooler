extends CanvasLayer

@onready var level = $".."
@onready var player = $"../player"


func _ready():
	visible = false
	
func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		get_tree().paused = true
		visible = true


func _on_voltar_pressed():
	get_tree().paused = false
	visible = false
	
	


func _on_sair_pressed():
	get_tree().quit()
	
	


func _on_reiniciar_pressed():
	get_tree().paused = false
	level._reset()
	
	
	
	
	
func _process(delta):
	pass
