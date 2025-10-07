class_name ECSUtils


## Synchronize a Transform component with the position from the entity (node2d)[br]
## `trs.transform = entity.global_transform` [br]
## This is usually run from _ready to sync node and component transforms together [br]
## This is the opposite of [method Utils.sync_from_transform]
static func sync_transform(entity: Entity):
	var trs: C_Transform = entity.get_component(C_Transform) as C_Transform
	if trs:
		trs.transform = entity.global_transform


## Synchronize a transfrorm from the component to the entity[br]
## `entity.global_transform = trs.transform[br]`
## This is the opposite of [method Utils.sync_transform]
static func sync_from_transform(entity: Entity):
	var trs: C_Transform = entity.get_component(C_Transform)
	if trs:
		entity.global_transform = trs.transform
