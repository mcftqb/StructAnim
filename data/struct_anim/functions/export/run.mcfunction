data modify storage struct_anim:utils root.args.export.all.animations set from storage struct_anim:animations root.animations
data modify storage struct_anim:utils root.args.export.all.players set from storage struct_anim:id root.players

execute store result storage struct_anim:utils root.args.export.all.animations_count int 1 run data get storage struct_anim:animations root.animations
execute store result storage struct_anim:utils root.args.export.all.players_count int 1 run data get storage struct_anim:id root.players

data modify storage struct_anim:utils root.args.export.all.pages set value []
data modify storage struct_anim:utils root.args.export.all.pages append value '{"text":"Next page contains all animations exported"}'

data modify storage struct_anim:utils root.args.str.paginate.separator set value ", "
data modify storage struct_anim:utils root.args.str.paginate.values set value []
data modify storage struct_anim:utils root.args.str.paginate.values append from storage struct_anim:animations root.animations[].name
data modify storage struct_anim:utils root.args.str.paginate.page_size set value 392
function struct_anim:utils/str/paginate

data modify storage struct_anim:utils root.args.export.all.wrap.values set from storage struct_anim:utils root.return.str.paginate.result
function struct_anim:export/wrap/run
data modify storage struct_anim:utils root.args.export.all.pages append from storage struct_anim:utils root.return.export.all.wrap.result[]

data modify storage struct_anim:utils root.args.export.all.pages append value '{"text":"Next page contains all players exported"}'

data modify storage struct_anim:utils root.args.str.paginate.values set value []
data modify storage struct_anim:utils root.args.str.paginate.values append from storage struct_anim:id root.players[].name
function struct_anim:utils/str/paginate

data modify storage struct_anim:utils root.args.export.all.wrap.values set from storage struct_anim:utils root.return.str.paginate.result
function struct_anim:export/wrap/run
data modify storage struct_anim:utils root.args.export.all.pages append from storage struct_anim:utils root.return.export.all.wrap.result[]

loot give @s loot struct_anim:export/all
tellraw @s {"text": "Animations & players successfully exported!", "color": "gold"}
tellraw @s [{"text":"Remember to copy your structures into the new world: ","color":"gold"}, {"text": ".minecraft/saves/YOUR_WORLD/generated/struct_anim", "clickEvent": {"action": "copy_to_clipboard", "value": ".minecraft/saves/YOUR_WORLD/generated/struct_anim"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click here to copy path", "color": "gold"}}}]
tellraw @s [{"text":"Exported item can be saved using ","color":"gold"},{"keybind":"key.saveToolbarActivator","bold":true, "extra": [" + 1..9"]},{"text":", and loaded in another world using "},{"keybind":"key.loadToolbarActivator","bold":true, "extra": [" + 1..9"]}]
