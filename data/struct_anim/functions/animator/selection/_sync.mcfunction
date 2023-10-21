$data modify storage struct_anim:animations root.animators[{id: "$(id)"}].frame set from storage struct_anim:animations root.selected_animator.frame
$data modify storage struct_anim:animations root.animators[{id: "$(id)"}].speed set from storage struct_anim:animations root.selected_animator.speed
$data modify storage struct_anim:animations root.animators[{id: "$(id)"}].play set from storage struct_anim:animations root.selected_animator.play
