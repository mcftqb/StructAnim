data modify storage struct_anim:id search.name set value ""
$execute store success score #IS_OPERATION_SUCCEESSFUL struct_anim.id run data modify storage struct_anim:id search.name set from storage struct_anim:id players[{id: $(id)}].name

execute unless score #IS_OPERATION_SUCCEESSFUL struct_anim.id matches 1 run function struct_anim:utils/log/error {text: "Player ID not found", trace: "id/player/_get_name"}
execute unless score #IS_OPERATION_SUCCEESSFUL struct_anim.id matches 1 run data modify storage struct_anim:id search.name set value "@#IMPOSSIBLE NAME#@%&^*"
