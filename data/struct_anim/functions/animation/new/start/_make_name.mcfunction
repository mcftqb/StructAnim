data modify storage struct_anim:utils root.args.get_player_id.name set from block ~ ~ ~ author
function struct_anim:id/player/select_by_name
data modify storage struct_anim:utils root.args.id_to_str.all.values set from storage struct_anim:id root.players[-1].uuid
function struct_anim:id/str/convert/all

data modify storage struct_anim:utils root.ctx.make_animation_name.name set string block ~ ~ ~ name 10

data modify storage struct_anim:utils root.ctx.make_animation_name.id set from storage struct_anim:utils root.return.id_to_str.all.result
function struct_anim:animation/new/start/__make_name with storage struct_anim:utils root.ctx.make_animation_name