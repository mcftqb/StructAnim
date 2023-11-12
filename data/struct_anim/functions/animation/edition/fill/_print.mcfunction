# print_fill_animation uses context:
# {
#   Dimension: str,
#   x: int, y: int, z: int,
#   endX: int, endY: int, endZ: int,
#   block: str,
# }
$tellraw @s [{"text": "Click to remove animation area", "underlined": true, "color": "red", "clickEvent": {"action": "suggest_command","value": "/execute in $(Dimension) run fill $(x) $(y) $(z) $(endX) $(endY) $(endZ) air"}}]
