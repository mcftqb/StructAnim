# set_player_name Uses context {name: str}
#alias entity playerByName @p[name="$(name)"]

$execute as @p[name="$(name)"] run function struct_anim:id/player/_store_name