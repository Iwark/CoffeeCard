class Player
	constructor: (@name, @power, @defense, @speed) ->
		@hp = 200
	attack: (opponent, doPowerUp) ->
		powerUp = Math.floor Math.random() * 5 # set powerUp (0..4)
		damage = @power - opponent.defense # base damege
		damage += powerUp if doPowerUp # if true, then add powerUp to damage
		if damage > 0 && @hp > 0 # damage is positive and alive
			opponent.hp -= damage
		opponent.hp = 0 if opponent.hp < 0 # do not overkill

class Battle
	constructor: (@player1, @player2) ->
		@turn = 1
	checkLife:  ->
		@player1.hp > 0 && @player2.hp >0 # both players are alive
	checkFaster: -> # first element bats first
		if @player1.speed > @player2.speed
			[@player1, @player2]
		else if @speed == @player2.speed
			tmp = Math.random()
			if tmp >= 0.5
				[@player1, @player2]
			else
				[@player2, @player1]
		else
			[@player2, @player1]
	makeBattle: ->
		while @checkLife()
			@makeTurn()
		@showWinner()
	makeTurn: ->
		[fasterPlayer, slowerPlayer] = @checkFaster()
		fasterPlayer.attack(slowerPlayer, true)
		slowerPlayer.attack(fasterPlayer, false)
		@showTurn()
		@turn++
	showTurn: ->
		console.log "#{@turn}ターン目"
		console.log "\t#{@player1.name}の残りHPは、#{@player1.hp}"
		console.log "\t#{@player2.name}の残りHPは、#{@player2.hp}"
	showWinner: ->
		if @player2.hp <= 0
			console.log "#{@player1.name}の勝ち！"
		else
			console.log "#{@player2.name}の勝ち！"

me = new Player "とみー", 10, 3, 2

you = new Player "いわーく", 14, 0, 1

game = new Battle(me, you)

game.makeBattle()


