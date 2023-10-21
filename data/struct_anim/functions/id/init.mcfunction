#define storage struct_anim:id "ID's storage"
#define score_holder #TOTAL_COUNT "Used for id's incrementing"

scoreboard objectives add struct_anim.id dummy
execute unless score #TOTAL_COUNT struct_anim.id matches 0.. run scoreboard players set #TOTAL_COUNT struct_anim.id 0
execute unless data storage struct_anim:id root run data modify storage struct_anim:id root set value {}