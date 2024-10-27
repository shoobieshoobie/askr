extends AcceptDialog

@onready var users_folder = DirAccess.open("res://users/")
@onready var user_input = $LineEdit

func _on_confirmed():
	users_folder.make_dir(user_input.text)