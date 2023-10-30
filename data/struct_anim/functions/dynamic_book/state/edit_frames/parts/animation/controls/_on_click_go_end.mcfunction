function struct_anim:animator/selection/get
function struct_anim:animation/search/animation_by_selection
data modify storage struct_anim:animations root.animators[-1].frame set from storage struct_anim:animations root.animations[-1].frames_count
function struct_anim:animator/play/step/previous_selected

# Update book
function struct_anim:dynamic_book/state/edit_frames/give