function struct_anim:animator/selection/get
$execute unless data storage struct_anim:animations root.animators[-1].callbacks.$(type).$(path)[0] run tellraw @s [{"text":"There is no callbacks for $(type).$(path)", "color": "red"}]
$execute if data storage struct_anim:animations root.animators[-1].callbacks.$(type).$(path)[0] run tellraw @s ["",{"text":"Callbacks of ", "color": "gold"},{"text":"$(type).$(path)", "color": "gold", "bold":"true"},{"text":":", "color": "gold"},{"text":" [\n  ", "color":"gray"},{"text":"\"", "color": "red"}, {"nbt":"root.animators[-1].callbacks.$(type).$(path)[]", "storage": "struct_anim:animations", "color":"dark_green", "italic":"true", "separator":[{"text":"\"", "color": "red"}, {"text": ",\n  ", "color": "gray"}, {"text":"\"", "color": "red"}]}, {"text":"\"", "color": "red"}, {"text":"\n]", "color":"gray"}]