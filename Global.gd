extends Node
var somaponto = 0
var vida = 4
signal PT

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.somaponto >= 569:
		print("AAAEEEEEEEEE garai")
	emit_signal("PT")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
