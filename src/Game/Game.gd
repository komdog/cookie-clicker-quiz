extends Control

# Instructions :
# -------
# When you click the cookie, the number on screen is supposed to go up
# The cookie should also play a sound when clicked
# But OH NO!! it's not working D:
# Help me fix it please <3

var cookies: int = 0
var game_active = true

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Game Started")

# Run when the cookie is clicked
func clicked():
	if game_active:
		$Pop.play()
		cookies += 1
		$Label.text = "Yummy Cookies : " + str(cookies)

	if cookies >= 20:
		end_game()

# Ends the game after collecting 20 cookies
func end_game():
	print("Game Over")
	game_active = false
	$WinScreen.visible = true
