
extends Area2D

@export var main_menu_path: String = "res://scenes/menu.tscn"

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("pickup"):
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
