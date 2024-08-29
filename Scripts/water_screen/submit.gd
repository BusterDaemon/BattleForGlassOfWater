extends Button

@export var Lable: Label
@export var scnRoot: Node2D
var xEditor = "../XContainer/XEdit"
var yEditor = "../YContainer/YEdit"
var inpReader: TextEdit = null
enum INPUT_VALIDATE_STATUS {
	GREATER,
	LESSER,
	EQUAL,
	NON_VALID
}

func _pressed():
	var status: INPUT_VALIDATE_STATUS
	if scnRoot.stage == 1:
		inpReader = get_node(xEditor)
		status = validateInp(inpReader, scnRoot.randX)
	if scnRoot.stage == 2:
		inpReader = get_node(yEditor)
		status = validateInp(inpReader, scnRoot.randY)
	
	if status == INPUT_VALIDATE_STATUS.GREATER:
		Lable.text = "Что-то ты перегул черный брат"
	if status == INPUT_VALIDATE_STATUS.LESSER:
		Lable.text = "Маловато будет"
	if status == INPUT_VALIDATE_STATUS.EQUAL:
		Lable.text = "ВО! То что ты искал."
	if status == INPUT_VALIDATE_STATUS.NON_VALID:
		Lable.text = "Это что за чухню ты сейчас ввёл?"

func validateInp(inp: TextEdit, tgt: int) -> INPUT_VALIDATE_STATUS:
	if inp.text.is_valid_int():
		var inpInt: int = inp.text.to_int()
		if inpInt == tgt:
			return INPUT_VALIDATE_STATUS.EQUAL
		if inpInt > tgt:
			return INPUT_VALIDATE_STATUS.GREATER
		if inpInt < tgt:
			return INPUT_VALIDATE_STATUS.LESSER
	return INPUT_VALIDATE_STATUS.NON_VALID
