extends GridContainer

@onready var app = $/root/App
@onready var modules = DirAccess.open(app.current_user_folder).get_files()
@onready var module_item = preload("res://module_item.tscn")

func _ready():
	for module in modules:
		var module_file = app.current_user_folder + module
		var module_json_text = FileAccess.get_file_as_string(module_file)
		var module_json_dict = JSON.parse_string(module_json_text)
		var module_title = module_json_dict.meta.title
		var module_code = module_json_dict.meta.code
		var module_description = module_json_dict.meta.description
		var module_tags = module_json_dict.meta.tags
		add_module(module_title, module_code, module_description, module_tags)

func add_module(title, code, desc, tags):
	var mod = module_item.instantiate()
	var mod_title_label = mod.find_child("ModuleName")
	var mod_code_label = mod.find_child("ModuleCode")
	var mod_tags = mod.find_child("ModuleTags")
	var tag_packed_array = PackedStringArray(tags)
	var tag_list = ",".join(tag_packed_array)

	mod_title_label.text = title
	mod_code_label.text = "00" + str(code)
	mod_tags.text = "tags: " + tag_list
	add_child(mod)
