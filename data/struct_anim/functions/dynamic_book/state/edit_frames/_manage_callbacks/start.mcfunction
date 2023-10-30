function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/suggestions/get
function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/_choose_event

tellraw @s ["",{"text":"Callbacks: ", "color":"gold"},{"text":"Add","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/add/choose"}},{"text":" | "},{"text":"Remove","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/remove/choose"}},{"text":" | "},{"text":"List","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/list"}}]
