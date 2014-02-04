coffee scriptの練習とゲームのコード（激途中だよ）


# helloWorld = ->
#     console.log "Hello"
#     console.log "World"

# helloWorld()

# add = (a,b) -> a+b

# sum = add 20, 30
# console.log sum

# tommy = "トミー"
# console.log "僕の名前は, #{tommy}"


# setTimeout  ->
#     console.log "1秒後にトミーが面白いことをする"
# , 1000


# #配列
# week= ['日','月','火','水','木','金','土']


# #月から金までを切り出すとき
# weekdays= week[1..5]


# #四回繰り返す

# for i in [0..3]
# 	console.log "#{week[i]}曜日はトミーが泳ぎまくる"


# weekdays.forEach (wday) ->
# 	console.log "#{wday}曜日はトミーがスクールさぼってデートする"


# #条件分岐

# numbers = [1..20]

# for num in numbers
# 	if num % 3  == 0
# 		console.log "あほーー"
# 	else 
# 		console.log "#{num}"

# persons = 
# 	tommy:
# 		name: "トミー"
# 		age: 20
# 		birth: "10/14"
# 	gammy:
# 		name: "がみ"
# 		age: 22
# 		birth: "9/4"

# console.log persons.gammy.name
# console.log persons.gammy.age
# console.log persons.gammy.birth


# class Person
# 	constructor: (@name, @age, @birth) ->
# 		#@age = 0
# 		#@name = name
# 	speak: ->
# 		console.log "#{@name} speaks"

# tommy = new Person "トミー" , "20" , 
# gammy = new Person "がみがみがみ" , "22"

# console.log tommy.name
# console.log tommy.age
# gammy.speak()




#classの生成
class Player
	constructor: (@name, @power, @save, @speed) ->
		@HP = 200

	attack: (opponent)->

		console.log "#{@name} attacks #{opponent.name}"

		#やりたいこと
		#opponent.HP から @power と opponent.save　をひきたいよ
		#Tommyのコード解読してがんばるよ


		  
Iwark = new Player "Iwark", "8" , "3", "4"
Justin = new Player "Justin", "3", "10", "2"


while Justin.HP > 0 && Iwark.HP > 0

	Iwark.attack(Justin)
	console.log Justin.HP

	Justin.attack(Iwark)
	console.log Iwark.HP
	


