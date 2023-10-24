# update_animation_controller uses context:
# {Dimension: str, x: int, y: int, z: int}
$execute in $(Dimension) run data modify block $(x) $(y) $(z) name set from storage struct_anim:utils root.ctx.update_animation_controller.frame