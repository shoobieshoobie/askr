extends Button

@onready var app = $/root/App
@onready var users_screen = $/root/App/UsersScreen
@onready var modules_screen = preload("res://modules_screen.tscn").instantiate()
@onready var username = ""

func _ready():
	pass # Replace with function body.

func _on_pressed():
	app.change_user(username)
	app.remove_child(users_screen)
	app.add_child(modules_screen)
