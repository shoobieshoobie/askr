extends AcceptDialog

@onready var app = get_node("../")
@onready var users_screen = $/root/App/UsersScreen
@onready var modules_screen = preload("res://modules_screen.tscn").instantiate()
@onready var users_folder = DirAccess.open("res://users/")
@onready var user_input = $LineEdit

func _on_confirmed():
	users_folder.make_dir(user_input.text)
	var new_user = user_input.text
	app.change_user(new_user)
	app.remove_child(users_screen)
	app.add_child(modules_screen)
