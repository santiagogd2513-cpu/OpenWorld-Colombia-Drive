extends Camera3D

## Cámara en tercera persona que sigue al vehículo de forma fiable

@export var follow_distance: float = 8.5
@export var follow_height: float = 3.8
@export var look_height: float = 1.0
@export var position_lerp: float = 8.0
@export var rotation_lerp: float = 10.0

var target: Node3D = null

func _ready() -> void:
	_find_target()

func _find_target() -> void:
	# Buscar el Renault12 en la escena
	var root = get_tree().current_scene
	if root == null:
		root = get_parent()
	target = root.get_node_or_null("Renault12")
	if target == null:
		# Fallback: buscar cualquier VehicleBody3D
		for child in root.get_children():
			if child is VehicleBody3D:
				target = child
				break
	if target == null:
		push_warning("PlayerCamera: no se encontró el vehículo.")

func _physics_process(delta: float) -> void:
	if target == null or not is_instance_valid(target):
		_find_target()
		return

	# El vehículo avanza en -Z local; la cámara se pone detrás (+Z local)
	var back_dir = target.global_transform.basis.z
	var desired_pos = target.global_position + back_dir * follow_distance + Vector3.UP * follow_height

	global_position = global_position.lerp(desired_pos, clamp(position_lerp * delta, 0.0, 1.0))

	var look_at_pos = target.global_position + Vector3.UP * look_height
	var from = global_position
	var to = look_at_pos
	if from.distance_squared_to(to) > 0.001:
		var target_transform = global_transform.looking_at(to, Vector3.UP)
		global_transform.basis = global_transform.basis.slerp(target_transform.basis, clamp(rotation_lerp * delta, 0.0, 1.0))
