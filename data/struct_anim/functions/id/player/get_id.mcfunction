data modify storage struct_anim:id search.id set value -1
$execute store success score #IS_OPERATION_SUCCEESSFUL struct_anim.id run data modify storage struct_anim:id search.id set from storage struct_anim:id players[{name: "$(name)"}].id

execute unless score #IS_OPERATION_SUCCEESSFUL struct_anim.id matches 1 run function struct_anim:utils/log/error {text: "Player Name not found", trace: "id/player/_get_id"}
execute unless score #IS_OPERATION_SUCCEESSFUL struct_anim.id matches 1 run data modify storage struct_anim:id search.id set value -1
