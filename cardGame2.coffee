#二人のプレイヤー生成
class  Player
  constructor: (@name, @attack, @defense, @speed)->
    @hp = 200
  kougeki: (player) ->
    damage = @attack
    damage += Math.floor Math.random()*5
    player.hp -= damage

player1 = new Player "さいが",15,0,0
player2 = new Player "いわーく",5,5,5

#speedが早い方が先攻（同じ場合は毎ターンランダムで決まる)

class Game
  constructor: (@player1,@player2)->
  turn: ->
    [first,second] = [0,0]
    if @player1.speed == @player2.speed
      decider = Math.floor Math.random()*2
      if decider == 0 #player1の攻撃
        [first,second] = [@player1, @player2]

      else if decider == 1
        [first,second] = [@player2, @player1]
    else if @player1.speed > @player2.speed
      [first,second] = [@player1, @player2]
    else
      [first,second] = [@player2, @player1]

    first.kougeki second#playerクラスのkougekiメソッドに別のplayerを渡す！
    @show(first,second)#showに渡す @クラス内の
  show: (first, second) ->
    console.log "#{first.name} attacks #{second.name} "
    console.log "#{second.name}hp:#{second.hp}"
  showresult: (first, second) ->
    if (first.hp < second.hp && first.hp < 1)
      console.log "#{second.name} の勝ち！"

game = new Game(player1,player2)

while player1.hp >0 && player2.hp >0
  game.turn()
  game.show()





