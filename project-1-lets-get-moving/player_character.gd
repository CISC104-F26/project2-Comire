extends Sprite2D
var movement_speed = 200.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_right"):
		position = position + Vector2(1, 0) * movement_speed * delta
	if Input.is_action_pressed("move_down"):
		position = position + Vector2(0, 1) * movement_speed * delta
	if Input.is_action_pressed("move_left"):
		position = position + Vector2(-1, 0) * movement_speed * delta
	if Input.is_action_pressed("move_up"):
		position = position + Vector2(0, -1) * movement_speed * delta
