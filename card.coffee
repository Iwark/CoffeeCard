class Player
	constructor: (@name, @power, @defense, @speed) ->
		@hp = 200
	attack: (opponent, doPowerUp) ->
		powerUp = Math.floor Math.random() * 5
		damage = @power - opponent.defense
		damage += powerUp if doPowerUp
		#console.log damage
		if damage > 0 && @hp > 0
			opponent.hp -= damage
		opponent.hp = 0 if opponent.hp < 0

class Battle
	constructor: (@player1, @player2) ->
		@turn = 1
	checkLife:  ->
		@player1.hp > 0 && @player2.hp >0
	checkFaster: ->
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
	showWinner: ->
		if @player2.hp <= 0
			console.log "#{@player1.name}の勝ち！"
		else
			console.log "#{@player2.name}の勝ち！"
	makeBattle: ->
		while game.checkLife(me , you)
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


me = new Player "とみー", 10, 3, 2

you = new Player "いわーく", 13, 0, 2

game = new Battle(me, you)

game.makeBattle()


