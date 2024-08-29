extends VSplitContainer

@export var xtext: TextEdit
@export var ytext: TextEdit
@export var btn: Button
@export var scnRoot: Node2D

func _process(delta):
	if (scnRoot.stage == 1 && xtext.text.is_empty()):
		btn.disabled = true
		return
	if (scnRoot.stage == 2 && ytext.text.is_empty()):
		btn.disabled = true
		return
	btn.disabled = false
