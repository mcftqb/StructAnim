function struct_anim:animator/selection/get

data modify storage struct_anim:utils root.args.animation.manage_callbacks.list.values set value []
$data modify storage struct_anim:utils root.args.animation.manage_callbacks.list.values append from storage struct_anim:animations root.animators[-1].callbacks.$(type).$(path)[]
data modify storage struct_anim:utils root.args.animation.manage_callbacks.list.result set value []
function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/list/_step

$execute unless data storage struct_anim:animations root.animators[-1].callbacks.$(type).$(path)[0] run tellraw @s [{"text":"There is no callbacks for $(type).$(path)", "color": "red"}]

execute if data storage struct_anim:utils root.args.animation.manage_callbacks.list.result[0] run tellraw @s ["",{"text":"Callbacks:", "color": "gold"},{"text":" [\n  ", "color":"gray"}, {"nbt":"root.args.animation.manage_callbacks.list.result[]", "storage": "struct_anim:utils", "interpret":true, "color":"dark_green", "italic":true, "separator":{"text":";\n  ", "color": "gray", "font": "uniform", "bold": true}}, {"text":"\n]", "color":"gray"}]