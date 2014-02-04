# helloWorld = ->
# 	console.log "Hello"
# 	console.log "World"

# helloWorld()

# add = (a,b) -> a+b

# sum = add 20, 30

# console.log sum

# tommy = "とみー"
# console.log "僕の名前は#{tommy}"

# setTimeout ->
# 	console.log "1秒後にとみーがおもしろいことをする"
# , 1000

# week = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat',]
# weekdays = week[1..5]

# action = ['デート', '笑う', '泣く', '遊ぶ', '休む']

# console.log weekdays

# for i in [0..3]
# 	console.log "#{week[i]}は#{action[i]}"

# weekdays.forEach (wday) ->
# 	console.log "#{wday}はかっこいい"

# numbers = [1..20]

# for num in numbers
# 	if num % 3 == 0
# 		console.log "アホー"
# 	else
# 		console.log "#{num}"

# persons =
# 	tommy:
# 		name: "とみー"
# 		age: 20
# 		birth: "10/14"
# 	gami:
# 		name: "がみ"
# 		age: 22
# 		birth: "9/4"

# console.log persons.gami.name

# class Person
# 	constructor: (@name) ->
# 		@age = 0
# 	speak: ->
# 		console.log "#{@name} speaks"

# tommy = new Person "とみー", 20
# gami = new Person "がみ", 22

# console.log tommy.name
# gami.speak()
