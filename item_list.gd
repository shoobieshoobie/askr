extends VBoxContainer

var users_folder = "res://users/"
var user_scene = preload("res://user_button.tscn")
var add_user_scene = preload("res://add_user.tscn")
var add_user_button = add_user_scene.instantiate()
var users = DirAccess.open(users_folder).get_directories()


# Called when the node enters the scene tree for the first time.
func _ready():
	for user in users:
		var new_user = user_scene.instantiate()
		add_child(new_user)
		var user_name = user
		var module_count = DirAccess.open(users_folder + user).get_files().size()
		new_user.username = user
		new_user.text = user_name + "\n" + str(module_count) + " Modules"
	add_child(add_user_button)
