$data modify storage struct_anim:animations selected_animator.speed set value $(speed)
function struct_anim:animator/selection/sync

function struct_anim:animator/play/step/next with storage struct_anim:animations selected_animator
function struct_anim:animator/selection/get
