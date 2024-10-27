extends Button

@onready var new_user_popup = preload("res://new_user_popup.tscn").instantiate()

func _on_pressed():
	add_sibling(new_user_popup)