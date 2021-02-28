#> kd_forceload:core/static/add/main
#
# 実行座標を静的forceload
#
# @internal

execute store success storage kd_forceload:core _.byte byte 1 at @s run forceload add ~ ~
execute if data storage kd_forceload:core _{byte:0b} at @s run function kd_forceload:core/static/add/cut

