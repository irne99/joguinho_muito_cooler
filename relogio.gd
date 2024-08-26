extends Area2D
@onready var control = $"../HUD/Control"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name== "player":
		control.segundo += 20
		print("coletou relogio")
		print(Global.somaponto)
		$Animatedrelo.play("coleted")
		await $Animatedrelo.animation_finished
		queue_free()
