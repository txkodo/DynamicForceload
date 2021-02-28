#> kd_forceload:custom/dimensions/init
# 
# ディメンションデータの設定
# 
# ディメンションを追加する場合もこれに倣って追記すること
# 
# @internal

data modify storage kd_forceload:core chunks set value [{active:0b,scanning:1b,dimension:"minecraft:overworld"},{active:0b,scanning:0b,dimension:"minecraft:the_nether"},{active:0b,scanning:0b,dimension:"minecraft:the_end"}]