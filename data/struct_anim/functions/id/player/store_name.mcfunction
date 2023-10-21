#alias entity playerByName @p[name="$(name)"]

$execute as @p[name="$(name)"] run function struct_anim:id/ensure_has
$data modify storage struct_anim:id players prepend value {id: 0, name: "$(name)"}
$execute store result storage struct_anim:id players[0].id int 1 run scoreboard players get @p[name="$(name)"] struct_anim.id