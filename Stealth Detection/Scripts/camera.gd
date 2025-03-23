extends StaticBody2D

var rayList = []

var raysToDetect = 2

var raysDetecting = 0

var detectionTimer = 0;

var isDetected = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	rayList.append(get_node("RayCast2D"))
	rayList.append(get_node("RayCast2D2"))
	rayList.append(get_node("RayCast2D3"))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if rayList[0].isDetected && rayList[1].isDetected && rayList[2].isDetected:
		detectionTimer = detectionTimer + delta
	else:
		detectionTimer = 0;
	
			
	##for ray in rayList:
		##if ray.isDetected:
			##raysDetecting = raysDetecting + 1
	
	if detectionTimer >= 1:
		isDetected = true
		
	print(isDetected)
	print(detectionTimer)
	##print(raysDetecting)
	pass
