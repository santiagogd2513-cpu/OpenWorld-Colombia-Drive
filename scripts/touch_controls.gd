extends CanvasLayer

## Controles táctiles fiables para Android
## Expone .steer y .throttle para que el vehículo los lea

var steer: float = 0.0
var throttle: float = 0.0

var _left: bool = false
var _right: bool = false
var _accel: bool = false
var _brake: bool = false

func _ready() -> void:
	add_to_group("mobile_input")
	visible = true

	var root = $Controls
	_connect_btn(root.get_node("BtnLeft"), "_on_left")
	_connect_btn(root.get_node("BtnRight"), "_on_right")
	_connect_btn(root.get_node("BtnAccel"), "_on_accel")
	_connect_btn(root.get_node("BtnBrake"), "_on_brake")

func _connect_btn(btn: Node, handler: String) -> void:
	if btn == null:
		return
	# Soporta Button y TouchScreenButton
	if btn.has_signal("button_down"):
		btn.button_down.connect(Callable(self, handler).bind(true))
		btn.button_up.connect(Callable(self, handler).bind(false))
	elif btn is TouchScreenButton:
		# TouchScreenButton usa pressed como propiedad; lo leemos en _process
		pass

func _process(_delta: float) -> void:
	# Fallback: leer TouchScreenButton si no hay señales de Button
	var root = $Controls
	var bl = root.get_node_or_null("BtnLeft")
	var br = root.get_node_or_null("BtnRight")
	var ba = root.get_node_or_null("BtnAccel")
	var bb = root.get_node_or_null("BtnBrake")

	if bl is TouchScreenButton:
		_left = bl.is_pressed()
	if br is TouchScreenButton:
		_right = br.is_pressed()
	if ba is TouchScreenButton:
		_accel = ba.is_pressed()
	if bb is TouchScreenButton:
		_brake = bb.is_pressed()

	steer = 0.0
	throttle = 0.0
	if _left:
		steer += 1.0
	if _right:
		steer -= 1.0
	if _accel:
		throttle += 1.0
	if _brake:
		throttle -= 1.0

func _on_left(down: bool) -> void:
	_left = down

func _on_right(down: bool) -> void:
	_right = down

func _on_accel(down: bool) -> void:
	_accel = down

func _on_brake(down: bool) -> void:
	_brake = down
