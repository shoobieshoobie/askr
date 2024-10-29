extends Label

@onready var app = $/root/App

func _ready():
	text = app.current_user