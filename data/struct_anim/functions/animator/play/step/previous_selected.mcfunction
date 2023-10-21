function struct_anim:animator/selection/get
data modify storage struct_anim:animations animators[-1].reversed set value true
function struct_anim:animator/play/step/next with storage struct_anim:animations selected_animator
