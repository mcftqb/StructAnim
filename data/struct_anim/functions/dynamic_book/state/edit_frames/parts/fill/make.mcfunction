$data modify storage struct_anim:dynbook root.books[-1].parts.current set value '["[",{"text":"Void anim-space","color":"red","clickEvent":{"action":"run_command","value":"$(on_click)"}},"|",{"text":"Alt","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"$(on_click)_alt"}},"]"]'
# tellraw @s 
