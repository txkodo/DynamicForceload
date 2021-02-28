#> kd_forceload:api/teleport
# 
# 実行者を実行座標にテレポートする
# 
# テレポート先は動的にforeceloadされる。(エンティティの移動、削除によって自動的にunmarkされる。)
# 
# ただし、もともとforceloadされていたチャンクには影響はない
#
# @api

tp @s ~ ~ ~ ~ ~
function kd_forceload:core/add/main