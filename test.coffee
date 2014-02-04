helloWorld = ->
  console.log "Hello"
  console.log "World"

helloWorld()

add = (a,b) -> a+b
sum = add 20, 30
console.log sum

tommy = "トミー"
console.log "僕の名前は,#{tommy}"

setTimeout ->
  console.log "一秒後にトミーが面白い事をする"
, 1000

setTimeout (-> console.log "一秒後にトミーが面白い事をする"),1000

week = ['sun','mon','tue','wed','thu','fri','sat']

#　#から始まる文章はコメント！

#配列の切り出しが簡単に出来てしまう
weekdays = week[1..5] #配列のmon to friが格納される

for i in [0..3]
  console.log "#{week[i]}はトミーが笑いまくる"

#console.log "#{week[0]}はトミーが笑いまくる"

weekdays.forEach (wday) ->
  console.log "#{wday}はトミーが面白い事しかしない"

#条件分岐
numbers = [1..20]
for num in numbers
  if num % 3 == 0
    console.log "のぞみ！"
  else
    console.log "#{num}"


persons =
  tommy:
    name: "とみー"
    age: 20
    birth: "18/14"
  gami:
    name: "がみ"
    age: 22
    birth: "9/4"
console.log persons.gami.name

#indent 減らすときはcommand [
A = 
  c:5
  d:7
  e:10

#A.c ->5

class Person
  constructor: (@name,@age) ->
#    @age = 0
#    @name = name
  speak: ->
    console.log "#{@name} speaks"
#constructor　メソッド（特別）　newした時に最初に絶対よばれうやつ view didloadみたいな
#@age=0にするっていう初期化処理とかをかく
#@ついてるのは tommy.nameみたいにアクセスできるようになる。
#メンバ変数は@つける。　つけないと tommy.birthみたいにいけない。
#引数に@つけてあげれば　わたしたものがnameになる
tommy = new Person "とみー",0
gami = new Person "がみ",10
console.log tommy.name
gami.speak()