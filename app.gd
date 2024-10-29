extends Control

@onready var current_user = null
@onready var current_user_folder = null
@onready var users_screen = preload("res://users_screen.tscn").instantiate()
@onready var modules_screen = preload("res://modules_screen.tscn").instantiate()

func _ready():
	add_child(users_screen)

func change_user(username):
	current_user = username
	current_user_folder = "res://users/" + username + "/"
