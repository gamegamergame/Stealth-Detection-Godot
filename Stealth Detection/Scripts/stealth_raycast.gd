extends RayCast2D

var isDetected = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	if is_colliding():
		var object = get_collider()
		
		if object.name == "Player":
			isDetected = true
		else:
			isDetected = false
	else:
		isDetected = false
	pass	
