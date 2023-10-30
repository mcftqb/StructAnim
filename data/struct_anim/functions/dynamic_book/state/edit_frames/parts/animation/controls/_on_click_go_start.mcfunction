function struct_anim:animator/selection/get
data modify storage struct_anim:animations root.animators[-1].frame set value -1
function struct_anim:animator/play/step/next_selected

# Update book
function struct_anim:dynamic_book/state/edit_frames/give