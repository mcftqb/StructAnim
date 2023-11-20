data modify storage struct_anim:utils root.args.str.concat.values set value []
$data modify storage struct_anim:utils root.args.str.concat.values append value '{"text":"Animation Controller","bold":true,"color":"gold","clickEvent": {"action": "run_command","value": "$(on_click)"},"hoverEvent":{"action":"show_item","value":"{id:\\"structure_block\\", Count:1b, tag:'
data modify storage struct_anim:utils root.args.str.escape.value set from storage struct_anim:utils root.return.itemset.animation.new.controller.value
function struct_anim:utils/str/escape/run
data modify storage struct_anim:utils root.args.str.concat.values append from storage struct_anim:utils root.return.str.escape.result
data modify storage struct_anim:utils root.args.str.concat.values append value '}"}}'
function struct_anim:utils/str/concat/run
data modify storage struct_anim:dynbook root.books[-1].parts.current set from storage struct_anim:utils root.return.str.concat.result

# tellraw @s }