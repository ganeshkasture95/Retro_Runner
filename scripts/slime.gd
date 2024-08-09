extends Node2D



const speed = 60

var direction = -1

@onready var ray_cast_right_2d = $RayCastRight2d
@onready var ray_cast_left_2d = $RayCastLeft2d

@onready var animated_sprite= $AnimatedSprite2D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if ray_cast_right_2d.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left_2d.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction * speed * delta 
