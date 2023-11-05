execute unless score #int.dec_to_base.value struct_anim.int matches 1.. run return 0

scoreboard players operation #int.dec_to_base.digit struct_anim.int = #int.dec_to_base.value struct_anim.int
scoreboard players operation #int.dec_to_base.digit struct_anim.int %= #int.dec_to_base.base struct_anim.int
scoreboard players operation #int.dec_to_base.value struct_anim.int /= #int.dec_to_base.base struct_anim.int

data modify storage struct_anim:utils root.return.int.dec_to_base.result prepend value 0
execute store result storage struct_anim:utils root.return.int.dec_to_base.result[0] int 1 run scoreboard players get #int.dec_to_base.digit struct_anim.int

function struct_anim:utils/int/dec_to_base/step