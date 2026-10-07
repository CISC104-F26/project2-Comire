extends Sprite2D
var normal_speed = 200.0
var sprint_speed = 400.0
var movement_speed = 200.0
var scale_speed = 1.0
var sprint_time = 0.0
var max_sprint_time = 5.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("change_color"):
		modulate = Color.AQUA
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
	if Input.is_action_pressed("sprint") and sprint_time < max_sprint_time:
		movement_speed = sprint_speed
		sprint_time += delta
	else:
		movement_speed = normal_speed
	if not Input.is_action_pressed("sprint"):
		sprint_time = 0.0
	if Input.is_action_pressed("grow"):
		scale += Vector2(1, 1) * scale_speed * delta
	if Input.is_action_pressed("shrink"):
		scale -= Vector2(1, 1) * scale_speed * delta
	look_at(get_global_mouse_position())
	
