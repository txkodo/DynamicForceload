#> kd_forceload:api/set_position
# 
# 実行者のPosにstorageの値を代入する
# 
# 移動先は動的にforeceloadされる。(エンティティの移動、削除によって自動的にunmarkされる。)
#
# ただし、もともとforceloadされていたチャンクには影響はない
#
# @input storage kd_forceload:api Pos
# 
# @api

#>
# @public
  #declare storage kd_forceload:api

data modify entity @s Pos set from storage kd_forceload:api Pos
function kd_forceload:core/add/main