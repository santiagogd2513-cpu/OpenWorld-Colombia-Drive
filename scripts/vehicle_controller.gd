extends VehicleBody3D

## Controlador de vehículo estilo arcade (mejor que GTA V en estabilidad)
## Pensado para el Renault 12 de prueba de Beta 1

@export var max_steer: float = 0.55
@export var max_engine_force: float = 280.0
@export var max_brake_force: float = 45.0
@export var reverse_force: float = 120.0
@export var steer_speed: float = 3.5
@export var auto_center_speed: float = 4.0

var _steer_target: float = 0.0
var _current_steer: float = 0.0

func _ready() -> void:
	# Centro de masa un poco más bajo y adelantado para mejor estabilidad
	center_of_mass = Vector3(0, -0.18, 0.12)

func _physics_process(delta: float) -> void:
	var throttle = Input.get_axis("brake", "accelerate")
	var steer_input = Input.get_axis("steer_right", "steer_left")

	# Dirección suave
	_steer_target = steer_input * max_steer
	_current_steer = move_toward(_current_steer, _steer_target, steer_speed * delta)
	steering = _current_steer

	# Aceleración / freno / reversa
	if throttle > 0.0:
		engine_force = throttle * max_engine_force
		brake = 0.0
	elif throttle < 0.0:
		# Si vamos hacia adelante, frenamos; si ya estamos casi parados, reversa
		var forward_speed = linear_velocity.dot(-global_transform.basis.z)
		if forward_speed > 1.5:
			engine_force = 0.0
			brake = abs(throttle) * max_brake_force
		else:
			engine_force = throttle * reverse_force
			brake = 0.0
	else:
		engine_force = 0.0
		# Freno motor suave
		brake = 3.0

	# Auto-centrado de dirección cuando no hay input
	if abs(steer_input) < 0.05:
		_current_steer = move_toward(_current_steer, 0.0, auto_center_speed * delta)
		steering = _current_steer
