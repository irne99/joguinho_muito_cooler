extends Control

@onready var timer_count = $MarginContainer/HBoxContainer2/timer_count as Label
@onready var contador_item = $MarginContainer/pontosContador/Contador_item as Label

@onready var timer = $Timer as Timer

signal tempo_acabou()

var minuto = 0
var segundo = 0

@export_range(0,2) var min_padrao = 1
@export_range(0,59) var seg_padrao = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	contador_item.text = str("%03d" % Global.somaponto)
	timer_count.text = str("%02d" % min_padrao) + ":" + str("%02d" % seg_padrao)
	minuto = min_padrao
	segundo = seg_padrao

# Called every frame. 'delta' is the elapsed time since the previous frame.


func _process(delta):
	contador_item.text = str("%03d" % Global.somaponto)
	if minuto == 0 && segundo == 0:
		emit_signal("tempo_acabou")


func _on_timer_timeout():
	if segundo >=60:
		minuto +=1
		segundo %=60
	
	if segundo == 0: 
		if minuto >0 :
			minuto -=1
			segundo = 60
			
	segundo -=1
	
	timer_count.text = str("%02d" % minuto) + ":" + str("%02d" % segundo)
	
	if segundo == 0 and minuto == 0:
		get_tree().change_scene_to_file("res://gameover.tscn")
	
