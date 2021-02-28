#> kd_forceload:custom/dimensions/next
# 
# 走査するディメンションを変える
# 
# ディメンションを追加する場合もこれに倣って追記すること
# 
# @internal

execute if data storage kd_forceload:core chunks[{dimension:"minecraft:overworld",scanning:1b}] run data modify storage kd_forceload:core chunks[{dimension:"minecraft:the_nether"}].scanning set value 2b
execute if data storage kd_forceload:core chunks[{dimension:"minecraft:the_nether",scanning:1b}] run data modify storage kd_forceload:core chunks[{dimension:"minecraft:the_end"}].scanning set value 2b
execute if data storage kd_forceload:core chunks[{dimension:"minecraft:the_end",scanning:1b}] run data modify storage kd_forceload:core chunks[{dimension:"minecraft:overworld"}].scanning set value 2b
# ここに追記 #

data modify storage kd_forceload:core chunks[{scanning:1b}].scanning set value 0b
data modify storage kd_forceload:core chunks[{scanning:2b}].scanning set value 1b