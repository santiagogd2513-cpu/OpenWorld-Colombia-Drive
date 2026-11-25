extends Camera3D

## Cámara suave en tercera persona que sigue al Renault 12

@export var target_path: NodePath = NodePath("../Renault12")
@export var offset: Vector3 = Vector3(0, 4.5, 9.0)
@export var look_offset: Vector3 = Vector3(0, 1.2, 0)
@export var follow_speed: float = 6.0
@export var look_speed: float = 8.0

var target: Node3D

func _ready() -> void:
	target = get_node_or_null(target_path)
	if target == null:
		push_warning("PlayerCamera: No se encontró el vehículo objetivo.")

func _physics_process(delta: float) -> void:
	if target == null:
		return

	# Posición deseada detrás del vehículo
	var desired_pos = target.global_transform.origin
	desired_pos += target.global_transform.basis.z * offset.z
	desired_pos += Vector3.UP * offset.y

	global_position = global_position.lerp(desired_pos, clamp(follow_speed * delta, 0.0, 1.0))

	# Mirar hacia el vehículo
	var look_at_pos = target.global_transform.origin + look_offset
	var current_look = global_transform.looking_at(look_at_pos, Vector3.UP)
	global_transform.basis = global_transform.basis.slerp(current_look.basis, clamp(look_speed * delta, 0.0, 1.0))
