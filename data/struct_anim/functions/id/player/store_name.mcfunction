# set_player_name Uses context {name: str}
#alias entity playerByName @p[name="$(name)"]

$execute as @p[name="$(name)"] run function struct_anim:id/ensure_has
data modify storage struct_anim:id root.players prepend value {id: 0, name: ""}
data modify storage struct_anim:id root.players[0].name set from storage struct_anim:utils root.ctx.set_player_name.name
$execute store result storage struct_anim:id root.players[0].id int 1 run scoreboard players get @p[name="$(name)"] struct_anim.id