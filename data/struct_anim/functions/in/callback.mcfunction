function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get

data modify storage struct_anim:utils root.ctx.input.add_callback set from storage struct_anim:animations root.suggestions[-1].callback
$data modify storage struct_anim:utils root.ctx.input.add_callback.callback set value "$(f)"
function struct_anim:in/_trim_slash
function struct_anim:in/_add_callback with storage struct_anim:utils root.ctx.input.add_callback
