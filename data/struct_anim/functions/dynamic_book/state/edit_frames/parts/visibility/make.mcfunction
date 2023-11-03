$data modify storage struct_anim:dynbook root.books[-1].parts.current set value '["Visibility: [",{"text":"Show","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"$(on_click)_show"}},{"text":"|","color":"reset"},{"text":"Hide","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"$(on_click)_hide"}},"]"]'
# tellraw @s 
