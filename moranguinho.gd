extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.name== "player":
		Global.somaponto += 20
		print("coletou morango")
		print(Global.somaponto)
		$Animatedmoran.play("coleted")
		await $Animatedmoran.animation_finished
		queue_free()
	
	
	
	pass # Replace with function body.
