extends TextureButton


# Run on start up
func _ready():
	# Connects the button click event to the "clicked()" function
	if connect("button_up", get_parent(), "click") == OK: pass

# Run when the cookie detect input from the mouse
func _gui_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			# Make cookie color darker
			modulate = Color(0.5,0.5,0.5,1)
		else:
			# Make cookie color brighter
			modulate = Color(1,1,1,1)

