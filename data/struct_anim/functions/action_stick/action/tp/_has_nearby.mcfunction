scoreboard players reset #animator.discover.success struct_anim.int
$execute store success score #animator.discover.success struct_anim.int if entity @e[type=marker,tag=struct_anim_animation_controller,distance=..2,nbt={data:{id: "$(id)"}},limit=1]