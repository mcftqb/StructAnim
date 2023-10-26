# make_animator_id uses context {animation: str, num: int} and selected animator
$data modify storage struct_anim:animations root.animators[-1].id set value "$(animation)/animator/$(num)"