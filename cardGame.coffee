#二人のプレイヤー生成
class  Player
  constructor: (@name, @attack, @defense, @speed)->
    @hp = 200
  kougeki: (player) ->
    damage = @attack
    damage += Math.floor Math.random()*5
    player.hp -= damage

player1 = new Player "さいが",15,0,0
player2 = new Player "あやか",5,5,5

#speedが早い方が先攻（同じ場合は毎ターンランダムで決まる)

class Game
  constructor: (@player1,@player2)->
  turn: ->
    [first,second] = [0,0]
    if player1.speed == player2.speed
      decider = Math.floor Math.random()*2
      if decider == 0 #player1の攻撃
        player1.kougeki(player2)
        [first,second] = [@player1, @player2]

      else if decider == 1
        player2.kougeki(player1)

    else if player1.speed > player2.speed
      player1.kougeki(player2)
    else
      player2.kougeki(player1)

    first.kougeki second
  show:->
    console.log "{@player1.name} attacks "

game = new Game()

while player1.hp <=0 || player2.hp <=0
  game.turn()
  game.show()