function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get

data modify storage struct_anim:utils root.ctx.array_filter set value {storage: "struct_anim:animations", path: "root.animators", filter: {}}
data modify storage struct_anim:utils root.ctx.array_filter.filter.animation set from storage struct_anim:animations root.suggestions[-1].animations.animation
function struct_anim:utils/array/filter with storage struct_anim:utils root.ctx.array_filter

data modify storage struct_anim:utils root.return.animator.selection.result set value []
data modify storage struct_anim:utils root.args.animator.selection.options set from storage struct_anim:utils root.return.array_filter.result
function struct_anim:dynamic_book/state/nothing_selected/parts/animation/choose/_select_instance/_step