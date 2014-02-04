helloWorld = ->
	console.log "Hello"
	console.log "Hello"

helloWorld()

add = (a,b) -> a+b

sum = add 20,30
console.log sum

tommy = "トミー"
console.log "僕の名前は,#{tommy}"

setTimeout (->console.log "１秒後にトミーが面白いことをする"), 1000

week = ['日','月','火','水','木','金','土']

weekdays = week[1..5]

for i in [0..3]
	console.log  "#{week[i]}曜日はトミーが笑いまくる"

	weekdays.forEach (wday) ->
		console.log "#{wday}曜日はトミーが面白いことしかしない"
		
numbers = [1..20]

for num in numbers
	if num % 3 == 0
		console.log "アホー"
	else
	 	console.log "#{num}"

persons =
	tommy:
		name: "トミー"
		age: 20
		birth: "10/24"
	gami:
		name: "ガミ"
		age: 22
		birth: "9/4"
console.log persons.gami.name

#indent 減らす時はcommand []
A =
	c:5
	d:7
	e:10

class Person
	constructor: (name) ->
		@age = 0
		@name = name
	speak: ->
		console.log "#{@name} speaks"

tommy = new Person "トミー"
gami = new Person "ガミ"
console.log tommy.name
gami.speak()