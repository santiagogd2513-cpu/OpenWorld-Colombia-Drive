extends CanvasLayer

@onready var speed_label: Label = $Root/SpeedLabel
@onready var time_label: Label = $Root/TimeLabel

var vehicle: VehicleBody3D
var day_night: Node

func _ready() -> void:
	vehicle = get_node_or_null("../Renault12")
	day_night = get_node_or_null("../WorldEnvironment")

func _process(_delta: float) -> void:
	if vehicle:
		var speed_kmh = vehicle.linear_velocity.length() * 3.6
		speed_label.text = "%d km/h" % int(speed_kmh)
	else:
		speed_label.text = "-- km/h"

	if day_night and day_night.has_method("get_time_string"):
		time_label.text = day_night.get_time_string()
	else:
		time_label.text = "--:--"
