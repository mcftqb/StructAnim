$tellraw @s ["",{"text":"Click me","bold":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/data modify storage struct_anim:animations root.animators[{id:\"$(id)\"}] merge value {step:$(step), interval:\"$(interval)\", reversed: $(reversed)b}"}},{"text":" to edit ","color":"gold"},{"text":"animation params","color":"gold","hoverEvent":{"action":"show_text","contents":"Step, Direction and Update interval"}}]