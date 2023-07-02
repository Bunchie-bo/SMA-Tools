extends CharacterBody2D


var currenttool = Resource
var cameraspeed = 250


func _physics_process(delta):

	if Input.is_action_pressed("left"):
		self.velocity.x = -cameraspeed
	elif Input.is_action_pressed("right") == false:
		self.velocity.x = 0

	if Input.is_action_pressed("right"):
		self.velocity.x = cameraspeed
	elif Input.is_action_pressed("left") == false:
		self.velocity.x = 0

	if Input.is_action_pressed("up"):
		self.velocity.y = -cameraspeed
	elif Input.is_action_pressed("down") == false:
		self.velocity.y = 0

	if Input.is_action_pressed("down"):
		self.velocity.y = cameraspeed
	elif Input.is_action_pressed("up") == false:
		self.velocity.y = 0

	move_and_slide()



	if Input.is_action_just_pressed("mouse1"):

		#this needs to check if the currenttool var's resource is an actual vaild tool resource and not just
		#an empty resource, and if so then to run the currenttool mouse1 function activating whatever the
		#tools mouse1 function is, currently i only have placetile which is gonna be just like the
		#frog game place tile but should grab a tile from a tile index or atlas that should come up in a UI
		#window to pick what tile you wanna place, so just like frog game but more complte for the editor :D

		if currenttool.new().has_method("mouse1"):
			currenttool.mouse1
			print_tree()







