$data remove storage struct_anim:animations root.selected_animators[{player: "$(name)"}]
$data modify storage struct_anim:animations root.selected_animators prepend value {player: "$(name)", animator: ""}

data modify storage struct_anim:animations root.selected_animators[0].animator set from storage struct_anim:animations root.selected_animator.id