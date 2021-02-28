#> kd_forceload:custom/dimensions/activate
# 
# ディメンションデータの設定
# 
# ディメンションを追加する場合もこれに倣って追記すること
# 
# @internal
data modify storage kd_forceload:core chunks[].active set value 0b

execute if predicate kd_forceload:custom/dimensions/minecraft.overworld run data modify storage kd_forceload:core chunks[{dimension:"minecraft:overworld"}].active set value 1b
execute if predicate kd_forceload:custom/dimensions/minecraft.the_nether run data modify storage kd_forceload:core chunks[{dimension:"minecraft:the_nether"}].active set value 1b
execute if predicate kd_forceload:custom/dimensions/minecraft.the_end run data modify storage kd_forceload:core chunks[{dimension:"minecraft:the_end"}].active set value 1b
# ここに追記 #