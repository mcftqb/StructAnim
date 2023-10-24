# make_animator_id uses context {animation: str, num: int}
$data modify storage struct_anim:animations root.animators[0].id set value "$(animation)/animator/$(num)"