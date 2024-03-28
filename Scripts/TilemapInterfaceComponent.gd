class_name TilemapInterfaceComponent extends Node2D

var tilemap: TileMap

func get_tile(position: Vector2i, layer: int) -> TileData:
	position = Vector2i(position.x / 32, position.y / 32)
	return tilemap.get_cell_tile_data(layer, position)

func get_collision(position: Vector2i) -> bool:
	var tile_0: TileData = get_tile(position, 0)
	var tile_1: TileData = get_tile(position, 1)
	
	var col_0 = tile_0.get_collision_polygons_count(0) > 0 if tile_0 else false
	var col_1 = tile_1.get_collision_polygons_count(0) > 0 if tile_1 else false
	
	return col_0 or col_1
	
