data modify storage struct_anim:utils root.args.str.escape.value set from storage struct_anim:utils root.args.animation.manage_callbacks.list.values[0]
function struct_anim:utils/str/escape/run
data modify storage struct_anim:utils root.args.animation.manage_callbacks.list.values[0] set from storage struct_anim:utils root.return.str.escape.result 

data modify storage struct_anim:utils root.args.str.concat.values set value []
data modify storage struct_anim:utils root.args.str.concat.values append value '{"text": "'
data modify storage struct_anim:utils root.args.str.concat.values append from storage struct_anim:utils root.args.animation.manage_callbacks.list.values[0]
data modify storage struct_anim:utils root.args.str.concat.values append value '", "clickEvent": {"action": "copy_to_clipboard", "value": "'
data modify storage struct_anim:utils root.args.str.concat.values append from storage struct_anim:utils root.args.animation.manage_callbacks.list.values[0]
data modify storage struct_anim:utils root.args.str.concat.values append value '"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click to copy this callback to clipboard", "color": "gold"}}}'
# tellraw @s 
function struct_anim:utils/str/concat/run
data modify storage struct_anim:utils root.args.animation.manage_callbacks.list.result append from storage struct_anim:utils root.return.str.concat.result