extends Node3D

@onready var world: World = $World

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ECS.world = world # We set the world here on the ECS singleton


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	world.process(delta, 'gameplay') # here we are running all the systems in the 'gameplay' group


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	world.process(delta, 'physics') # here we are running all the systems in the 'physics' group
