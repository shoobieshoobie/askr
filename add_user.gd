extends Button

@onready var app = $/root/App
@onready var new_user_popup = preload("res://new_user_popup.tscn").instantiate()

func _on_pressed():
	app.add_child(new_user_popup)