extends Sprite2D

var _direction
var _shrink_factor : int = 0.05


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	scale.y -= 0.05
	
	
	
	
	
	if scale.y <= 0:
		queue_free()
