# get_player_id uses args (name: str)

data modify storage struct_anim:utils root.ctx.array_select set value {storage: "struct_anim:id", path: "root.players", filter: {}}
data modify storage struct_anim:utils root.ctx.array_select.filter.name set from storage struct_anim:utils root.args.get_player_id.name
function struct_anim:utils/array/select with storage struct_anim:utils root.ctx.array_select

execute unless score #array_select.has_element struct_anim.int matches 1 run function struct_anim:utils/log/error {text: "Player Name not found", trace: "id/player/_get_id"}
