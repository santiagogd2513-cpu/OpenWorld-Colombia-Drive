extends CanvasLayer

## Controles táctiles en pantalla para móvil (landscape)
## Izquierda: girar | Derecha: acelerar / frenar

@onready var btn_left: TouchScreenButton = $Controls/BtnLeft
@onready var btn_right: TouchScreenButton = $Controls/BtnRight
@onready var btn_accel: TouchScreenButton = $Controls/BtnAccel
@onready var btn_brake: TouchScreenButton = $Controls/BtnBrake

var steer_input: float = 0.0
var throttle_input: float = 0.0

func _ready() -> void:
	visible = true
	# En PC también se ven (útiles para probar); en móvil son esenciales

func _process(_delta: float) -> void:
	steer_input = 0.0
	throttle_input = 0.0

	if btn_left and btn_left.is_pressed():
		steer_input += 1.0
	if btn_right and btn_right.is_pressed():
		steer_input -= 1.0
	if btn_accel and btn_accel.is_pressed():
		throttle_input += 1.0
	if btn_brake and btn_brake.is_pressed():
		throttle_input -= 1.0

	# Inyectar en el InputMap virtual para que el VehicleController los lea
	_set_action("steer_left", steer_input > 0.1)
	_set_action("steer_right", steer_input < -0.1)
	_set_action("accelerate", throttle_input > 0.1)
	_set_action("brake", throttle_input < -0.1)

func _set_action(action: String, pressed: bool) -> void:
	if pressed and not Input.is_action_pressed(action):
		Input.action_press(action)
	elif not pressed and Input.is_action_pressed(action):
		# Solo soltar si no hay tecla física mantenida
		if not Input.is_physical_key_pressed(KEY_W) and action == "accelerate":
			Input.action_release(action)
		elif not Input.is_physical_key_pressed(KEY_S) and action == "brake":
			Input.action_release(action)
		elif not Input.is_physical_key_pressed(KEY_A) and action == "steer_left":
			Input.action_release(action)
		elif not Input.is_physical_key_pressed(KEY_D) and action == "steer_right":
			Input.action_release(action)
		else:
			# Para touch puro
			if action in ["steer_left", "steer_right", "accelerate", "brake"]:
				if not _physical_still_held(action):
					Input.action_release(action)

func _physical_still_held(action: String) -> bool:
	match action:
		"accelerate":
			return Input.is_physical_key_pressed(KEY_W)
		"brake":
			return Input.is_physical_key_pressed(KEY_S)
		"steer_left":
			return Input.is_physical_key_pressed(KEY_A)
		"steer_right":
			return Input.is_physical_key_pressed(KEY_D)
	return false
