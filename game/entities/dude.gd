class_name Dude
extends Entity

# Remember Entities are just containers and glue code

func on_ready() -> void:
	# we probably want to sync the component transform to the node transform
	print('Look I am from dude', self.global_position)
	ECSUtils.sync_transform(self)

#func on_update(delta: float) -> void:
#pass

#func on_destroy() -> void:
#pass
