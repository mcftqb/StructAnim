# Invert Z
scoreboard players set #animator.calc_pos.end.size.tmp struct_anim.int -1
scoreboard players operation #animator.calc_pos.end.size.z struct_anim.int *= #animator.calc_pos.end.size.tmp struct_anim.int