extends Control


@onready var toollist = $"/root/Toollist"




func _on_tiles_pressed():
	$Control/tiletools.show()

func _on_placetile_pressed():
	get_parent().currenttool = toollist.placetile
	$Control/selectedtool.set_text("Selected Tool: Place Tile")
