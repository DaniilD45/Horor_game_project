extends Node2D


func _ready():
	var character = preload("res://Scenes/character_body_2d.tscn").instantiate()
	add_child(character)



func _process(delta):
	pass
