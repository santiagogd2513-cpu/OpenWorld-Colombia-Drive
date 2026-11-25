extends WorldEnvironment

## Ciclo día / atardecer / noche / amanecer
## La adaptación ocular real la maneja CameraAttributesPractical (auto exposure)
## Este script mueve el sol y cambia la energía/color de la luz.

@export var day_length_minutes: float = 8.0	# duración de un día completo en minutos reales
@export var start_time: float = 0.35		# 0.0 = medianoche, 0.25 = amanecer, 0.5 = mediodía
@export var debug_speed_multiplier: float = 1.0

@onready var sun: DirectionalLight3D = get_node_or_null("../DirectionalLight3D")

var time_of_day: float = 0.35	# 0.0 a 1.0

func _ready() -> void:
	time_of_day = start_time
	_update_sun()

func _process(delta: float) -> void:
	var day_seconds = day_length_minutes * 60.0
	time_of_day += (delta / day_seconds) * debug_speed_multiplier
	if time_of_day >= 1.0:
		time_of_day -= 1.0

	# Teclas de debug para probar rápido
	if Input.is_action_just_pressed("ui_page_up"):
		time_of_day = fmod(time_of_day + 0.08, 1.0)
	if Input.is_action_just_pressed("ui_page_down"):
		time_of_day = fmod(time_of_day - 0.08 + 1.0, 1.0)

	_update_sun()

func _update_sun() -> void:
	if not sun:
		return

	# Ángulo del sol (0 = amanecer, 0.5 = atardecer)
	var angle = time_of_day * TAU - PI * 0.5
	var height = sin(angle)
	var elevation = clamp(height, -0.3, 1.0)

	# Rotación del sol
	sun.rotation_degrees = Vector3(-elevation * 75.0 - 15.0, 35.0, 0.0)

	# Color y energía según la hora
	var energy: float
	var color: Color

	if time_of_day > 0.22 and time_of_day < 0.78:
		# Día
		var day_factor = 1.0 - abs(time_of_day - 0.5) * 1.6
		energy = lerp(0.4, 1.35, day_factor)
		color = Color(1.0, 0.96, 0.88)
	elif time_of_day >= 0.18 and time_of_day <= 0.28:
		# Amanecer
		var t = (time_of_day - 0.18) / 0.1
		energy = lerp(0.15, 0.9, t)
		color = Color(1.0, 0.55, 0.3).lerp(Color(1.0, 0.9, 0.75), t)
	elif time_of_day >= 0.72 and time_of_day <= 0.82:
		# Atardecer
		var t = (time_of_day - 0.72) / 0.1
		energy = lerp(0.9, 0.12, t)
		color = Color(1.0, 0.9, 0.7).lerp(Color(1.0, 0.4, 0.2), t)
	else:
		# Noche
		energy = 0.08
		color = Color(0.55, 0.6, 0.85)

	sun.light_energy = energy
	sun.light_color = color
	sun.shadow_enabled = energy > 0.2

func get_time_string() -> String:
	var hours = int(time_of_day * 24.0)
	var minutes = int(fmod(time_of_day * 24.0 * 60.0, 60.0))
	return "%02d:%02d" % [hours, minutes]
