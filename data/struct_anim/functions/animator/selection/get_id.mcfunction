# get_selected_animator_id uses args (player_id: str)
data modify storage struct_anim:utils root.ctx.array_select set value {storage: "struct_anim:animations", path: "root.selected_animators", filter: {}}
data modify storage struct_anim:utils root.ctx.array_select.filter.player_id set from storage struct_anim:utils root.args.get_selected_animator_id.player_id
function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select
scoreboard players operation #get_selected_animator_id.has_element struct_anim.int = #array_select.has_element struct_anim.int