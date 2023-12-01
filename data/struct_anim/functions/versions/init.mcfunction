scoreboard objectives add struct_anim.version dummy
scoreboard players set #NEW_MAJOR_VERSION struct_anim.version 1

function struct_anim:versions/get
execute if score #MAJOR_VERSION struct_anim.version <= #NEW_MAJOR_VERSION struct_anim.version run function struct_anim:versions/migrations/run

scoreboard players operation #MAJOR_VERSION struct_anim.version = #NEW_MAJOR_VERSION struct_anim.version
scoreboard players set #MINOR_VERSION struct_anim.version 0
scoreboard players set #PATCH_VERSION struct_anim.version 0
function struct_anim:versions/get