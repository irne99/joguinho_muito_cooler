extends CanvasLayer
@onready var level = $".."



signal again


func _ready():
	#level._denovo
	pass



func _on_sair_pressed():
	get_tree().quit()


func _on_recomeçar_pressed():
	#emit_signal("again")
	get_tree().change_scene_to_file("res://level_1.tscn")
	
