#> kd_forceload:api/add
# 
# 実行者の位置を動的にforeceloadする。(実行者の移動、削除によって自動的にunmarkされる。)
#
# ただし、もともとforceloadされていたチャンクには影響はない
#
# @internal

# @api

#>
# @public
  #declare storage kd_forceload:api
  #declare tag kd_forceload

function kd_forceload:core/add/main