data modify storage struct_anim:utils root.args.get_selected_animator_id.player_id set from entity @s UUID
function struct_anim:animator/selection/get_id

data modify storage struct_anim:utils root.args.get_animator.id set from storage struct_anim:animations root.selected_animators[-1].animator
function struct_anim:animator/get