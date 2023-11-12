# fill_animation uses context:
# {
#   Dimension: str,
#   x: int, y: int, z: int,
#   endX: int, endY: int, endZ: int,
#   block: str,
# }
$execute in $(Dimension) run fill $(x) $(y) $(z) $(endX) $(endY) $(endZ) $(block)