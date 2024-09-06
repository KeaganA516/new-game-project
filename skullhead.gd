extends Area2D
var speed = 200
func _process(delta: float) -> void:
	translate(Vector2.LEFT * speed * delta)
	position.y += sin(position.x * delta) *0.4


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("projectile"):
		queue_free()
