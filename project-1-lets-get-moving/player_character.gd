extends Sprite2D
var normal_speed = 200.0
var sprint_speed = 400.0
var movement_speed = 200.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("respawn"):
		global_position = get_global_mouse_position()
	if Input.is_action_pressed("move_right"):
		position = position + Vector2(1, 0) * movement_speed * delta
	if Input.is_action_pressed("move_down"):
		position = position + Vector2(0, 1) * movement_speed * delta
	if Input.is_action_pressed("move_left"):
		position = position + Vector2(-1, 0) * movement_speed * delta
	if Input.is_action_pressed("move_up"):
		position = position + Vector2(0, -1) * movement_speed * delta
	if Input.is_action_pressed("sprint"):
		movement_speed = sprint_speed
	else:
		movement_speed = normal_speed
		
