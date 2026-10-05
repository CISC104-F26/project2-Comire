extends MeshInstance3D

var movement_speed = 5.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_right"):
		position = position + Vector3(1,0,0) * movement_speed * delta
	if Input.is_action_pressed("move_left"):
		position = position + Vector3(-1,0,0) * movement_speed * delta
	if Input.is_action_pressed("move_up"):
		position = position + Vector3(0,1,0) * movement_speed * delta
	if Input.is_action_pressed("move_down"):
		position = position + Vector3(0,-1,0) * movement_speed * delta
	if Input.is_action_pressed("move_forward"):
		position = position + Vector3(0,0,-1) * movement_speed * delta
	if Input.is_action_pressed("move_back"):
		position = position + Vector3(0,0,1) * movement_speed * delta
