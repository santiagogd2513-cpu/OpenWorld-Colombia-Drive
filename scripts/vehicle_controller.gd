extends VehicleBody3D

## Controlador arcade del Renault 12
## Lee teclado + input táctil (grupo mobile_input)

@export var max_steer: float = 0.6
@export var max_engine_force: float = 420.0
@export var max_brake_force: float = 55.0
@export var reverse_force: float = 180.0
@export var steer_speed: float = 4.5
@export var auto_center_speed: float = 5.0

var _steer_target: float = 0.0
var _current_steer: float = 0.0

func _ready() -> void:
	center_of_mass = Vector3(0, -0.22, 0.1)
	add_to_group("player_vehicle")

func _physics_process(delta: float) -> void:
	var throttle = Input.get_axis("brake", "accelerate")
	var steer_input = Input.get_axis("steer_right", "steer_left")

	# Sumar input táctil si existe
	var mobile = _get_mobile_input()
	if mobile:
		throttle = clamp(throttle + mobile.throttle, -1.0, 1.0)
		steer_input = clamp(steer_input + mobile.steer, -1.0, 1.0)

	_steer_target = steer_input * max_steer
	_current_steer = move_toward(_current_steer, _steer_target, steer_speed * delta)
	steering = _current_steer

	if throttle > 0.05:
		engine_force = throttle * max_engine_force
		brake = 0.0
	elif throttle < -0.05:
		var forward_speed = linear_velocity.dot(-global_transform.basis.z)
		if forward_speed > 2.0:
			engine_force = 0.0
			brake = abs(throttle) * max_brake_force
		else:
			engine_force = throttle * reverse_force
			brake = 0.0
	else:
		engine_force = 0.0
		brake = 1.5

	if abs(steer_input) < 0.05:
		_current_steer = move_toward(_current_steer, 0.0, auto_center_speed * delta)
		steering = _current_steer

func _get_mobile_input() -> Node:
	var nodes = get_tree().get_nodes_in_group("mobile_input")
	if nodes.size() > 0:
		return nodes[0]
	return null
