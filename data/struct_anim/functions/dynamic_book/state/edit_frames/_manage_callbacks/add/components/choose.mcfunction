tellraw @s {"text": "Callbacks > Add > Components:", "color": "gold"}
tellraw @s [{"text": "", "color": "gold", "bold": true},    {"text": "pause", "clickEvent":{"action":"run_command", "value": "/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/add/components/_click {f: 'pause'}"}}, " ", {"text": "pause_reversed", "clickEvent":{"action":"run_command", "value": "/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/add/components/_click {f: 'pause_reversed'}"}}, " ", {"text": "sleep", "clickEvent":{"action":"suggest_command", "value": "/function struct_anim:in/callback {f: ['function struct_anim:actions/sleep {time:\"1s\"}']}"}}]
tellraw @s [{"text": "", "color": "gold", "bold": true}, {"text": "reverse", "clickEvent":{"action":"run_command", "value": "/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/add/components/_click {f: 'reverse'}"}}, " ",{"text": "reverse_once", "clickEvent":{"action":"run_command", "value": "/function struct_anim:dynamic_book/state/edit_frames/_manage_callbacks/add/components/_click {f: 'reverse_once'}"}}]
