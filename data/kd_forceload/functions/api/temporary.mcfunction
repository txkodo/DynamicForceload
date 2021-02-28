#> kd_forceload:api/temporary
# 
# 実行位置を一時的にforceloadする
# 
# 1tick間のforceloadを保証しその後自動的にunmarkされる。
# 
# 変則的ではあるが、その後すぐにチャンク内にkd_forceloadタグを持つエンティティを召喚することで動的forceloadと同様の状態となる。
# 
# ただし、もともとforceloadされていたチャンクには影響はない
# 
# @api

#>
# @public
  #declare storage kd_forceload:api
  #declare tag kd_forceload

data modify entity @s Pos set from storage kd_forceload:api Pos
function kd_forceload:core/add/main