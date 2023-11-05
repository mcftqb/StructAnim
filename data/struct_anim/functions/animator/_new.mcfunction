# make_animator_id uses context {animation: str, id: str} and selected animator
$data modify storage struct_anim:animations root.animators[-1].id set value "$(animation)/$(id)"