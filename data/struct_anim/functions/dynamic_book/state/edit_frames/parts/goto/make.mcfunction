$data modify storage struct_anim:dynbook root.books[-1].parts.goto set value '["Go: [",{"text":"to Core","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_core"}},{"text":"|","color":"reset"},{"text":"Back","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"$(on_click)_back"}},"]"]'
# tellraw @s 
