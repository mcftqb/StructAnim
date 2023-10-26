# place_frame uses context
# {Dimension: str, frame: str, x: int, y: int, z: int, rotation: str, mirror: str, integrity: double, seed: int}
$execute in $(Dimension) run place template $(frame) $(x) $(y) $(z) $(rotation) $(mirror) $(integrity) $(seed)
