$data modify storage struct_anim:animations selected_animator.id set from storage struct_anim:animations selected_animators[{player: "$(name)"}].animator

function struct_anim:animator/selection/_get_animator with storage struct_anim:animations selected_animator
