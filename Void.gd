extends Area2D
@onready var player = $"../player"




func _on_body_entered(body):
	if body.name == "player":
		Global.vida -=5
		player._cb()
		print(Global.vida)
