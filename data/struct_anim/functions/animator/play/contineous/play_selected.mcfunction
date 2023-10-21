function struct_anim:animator/selection/get
data modify storage struct_anim:animations selected_animator.play set value true
function struct_anim:animator/selection/sync
function struct_anim:animator/play/contineous/play with storage struct_anim:animations selected_animator